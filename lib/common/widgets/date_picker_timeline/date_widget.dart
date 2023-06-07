import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class DateWidget extends StatelessWidget {
  final double? width;
  final DateTime date;
  final void Function(DateTime selectedDate)? onDateSelected;
  final bool isSelected;

  const DateWidget({
    super.key,
    required this.date,
    this.width,
    this.onDateSelected,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onDateSelected?.call(date);
      },
      child: Container(
        width: width,
        margin: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          color: isSelected ? ColorStyles.yellowGreen : Colors.white,
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              date.day.toString(), // Date
              style: TextStyles.s17MediumText.copyWith(
                color: isSelected ? Colors.white : ColorStyles.zodiacBlue,
              ),
            ),
            Text(
              DateFormat('E', context.locale.languageCode)
                  .format(date)
                  .toUpperCase(), // WeekDay
              style: TextStyles.s14MediumText.copyWith(
                color: isSelected ? Colors.white : ColorStyles.zodiacBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
