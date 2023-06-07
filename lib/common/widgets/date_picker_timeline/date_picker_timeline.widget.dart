import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/common/widgets/date_picker_timeline/date_widget.dart';

class DatePickerTimeline extends StatefulWidget {
  /// Start Date in case user wants to show past dates
  /// If not provided calendar will start from the initialSelectedDate
  final DateTime startDate;

  /// Width of the selector
  final double width;

  /// Height of the selector
  final double height;

  /// DatePicker Controller
  final DatePickerController? controller;

  /// Callback function for when a different date is selected
  final void Function(DateTime selectedDate)? onDateChange;

  const DatePickerTimeline({
    super.key,
    required this.startDate,
    this.width = 60,
    this.height = 70,
    this.controller,
    this.onDateChange,
  });

  @override
  State<StatefulWidget> createState() => _DatePickerTimelineState();
}

class _DatePickerTimelineState extends State<DatePickerTimeline> {
  late DateTime _currentDate;

  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    // Init the calendar locale
    // initializeDateFormatting(widget.locale);
    // Set initial Values
    _currentDate = widget.startDate;

    widget.controller?.setDatePickerState(this);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DatePickerTimeline oldWidget) {
    if (oldWidget.startDate.compareTo(widget.startDate) != 0) {
      widget.controller?.setDateAndAnimate(widget.startDate);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: ListView.builder(
        itemCount: widget.startDate.daysInMonth,
        scrollDirection: Axis.horizontal,
        controller: _controller,
        itemBuilder: (context, index) {
          final bool isSelected = _currentDate.day == index + 1;

          // Return the Date Widget
          return DateWidget(
            date: widget.startDate.copyWith(day: index + 1),
            width: widget.width,
            onDateSelected: (selectedDate) {
              widget.onDateChange?.call(selectedDate);

              setState(() {
                _currentDate = selectedDate;
              });
            },
            isSelected: isSelected,
          );
        },
      ),
    );
  }
}

class DatePickerController {
  _DatePickerTimelineState? _datePickerState;

  void setDatePickerState(_DatePickerTimelineState state) {
    _datePickerState = state;
  }

  DateTime _getStartDate() {
    return _datePickerState!.widget.startDate;
  }

  void jumpToSelection() {
    assert(
      _datePickerState != null,
      'DatePickerController is not attached to any DatePicker View.',
    );

    // jump to the current Date
    _datePickerState!._controller
        .jumpTo(_calculateDateOffset(_datePickerState!._currentDate));
  }

  /// This function will animate the Timeline to the currently selected Date
  void animateToSelection({
    duration = const Duration(milliseconds: 500),
    curve = Curves.linear,
  }) {
    assert(
      _datePickerState != null,
      'DatePickerController is not attached to any DatePicker View.',
    );

    // animate to the current date
    _datePickerState!._controller.animateTo(
      _calculateDateOffset(_datePickerState!._currentDate),
      duration: duration,
      curve: curve,
    );
  }

  /// This function will animate to any date that is passed as an argument
  /// In case a date is out of range nothing will happen
  void animateToDate(
    DateTime date, {
    duration = const Duration(milliseconds: 500),
    curve = Curves.linear,
  }) {
    assert(
      _datePickerState != null,
      'DatePickerController is not attached to any DatePicker View.',
    );

    _datePickerState!._controller.animateTo(
      _calculateDateOffset(date),
      duration: duration,
      curve: curve,
    );
  }

  /// This function will animate to any date that is passed as an argument
  /// this will also set that date as the current selected date
  void setDateAndAnimate(
    DateTime date, {
    duration = const Duration(milliseconds: 500),
    curve = Curves.linear,
  }) {
    assert(
      _datePickerState != null,
      'DatePickerController is not attached to any DatePicker View.',
    );

    assert(
      date.year == _getStartDate().year && date.month == _getStartDate().month,
      'Navigation Date must be as the same month and year as the startDate',
    );

    log('message');

    _datePickerState!._controller.animateTo(
      _calculateDateOffset(date),
      duration: duration,
      curve: curve,
    );

    _datePickerState!._currentDate = date;
  }

  /// Calculate the number of pixels that needs to be scrolled to go to the
  /// date provided in the argument
  double _calculateDateOffset(DateTime date) {
    int offset = date.day - 1;
    return offset * _datePickerState!.widget.width;
  }
}
