import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/date_picker_timeline/date_picker_timeline.widget.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/date_picker/date_selection.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/date_picker/sf_date_picker_dialog.widget.dart';

class DiaryTimeline extends StatefulWidget {
  const DiaryTimeline({super.key});

  @override
  State<DiaryTimeline> createState() => _DiaryTimelineState();
}

class _DiaryTimelineState extends State<DiaryTimeline> {
  final ValueNotifier<DateTime> _selectedDateNotifier =
      ValueNotifier(DateTime.now());
  final DatePickerController _datePickerController = DatePickerController();

  Future<void> _showDialog() async {
    final DateTime? selectedDate = await showDialog(
      context: context,
      builder: (context) {
        return SfDatePickerDialog(
          initialSelectedDate: _selectedDateNotifier.value,
          minDate: context.read<AuthBloc>().state.user?.startNutritionDate,
        );
      },
    );

    if (selectedDate != null) {
      _selectedDateNotifier.value = selectedDate;
    }
  }

  void _onDateChange(DateTime date) {
    context.read<DiaryBloc>().add(DiaryEvent.getByDay(date: date));
  }

  @override
  void dispose() {
    _selectedDateNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _datePickerController.animateToSelection();
    });

    return Container(
      padding: EdgeInsets.only(top: context.paddingTop),
      decoration: const BoxDecoration(
        color: ColorStyles.aliceBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateSelection(
            onTap: _showDialog,
            selectedDateNotifier: _selectedDateNotifier,
          ),
          ValueListenableBuilder(
            valueListenable: _selectedDateNotifier,
            builder: (context, value, child) {
              return DatePickerTimeline(
                startDate: value,
                minDate:
                    context.read<AuthBloc>().state.user!.startNutritionDate!,
                controller: _datePickerController,
                onDateChange: _onDateChange,
              );
            },
          )
        ],
      ),
    );
  }
}
