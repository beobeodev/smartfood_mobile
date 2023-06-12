import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SfDatePickerDialog extends StatelessWidget {
  final DateTime? initialSelectedDate;

  const SfDatePickerDialog({super.key, this.initialSelectedDate});

  void _onSelectionChanged(
    DateRangePickerSelectionChangedArgs args,
    BuildContext context,
  ) {
    if (args.value is DateTime) {
      Navigator.pop(context, args.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: const EdgeInsets.all(AppSize.horizontalSpace),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        width: context.dialogInsideWidth(),
        height: context.height / 2,
        child: SfDateRangePicker(
          showNavigationArrow: true,
          onSelectionChanged: (args) => _onSelectionChanged(args, context),
          initialDisplayDate: initialSelectedDate,
          initialSelectedDate: initialSelectedDate,
          headerStyle: DateRangePickerHeaderStyle(
            textAlign: TextAlign.center,
            textStyle: TextStyles.s17BoldText,
          ),
          monthViewSettings: DateRangePickerMonthViewSettings(
            showTrailingAndLeadingDates: true,
            viewHeaderStyle: DateRangePickerViewHeaderStyle(
              textStyle: TextStyles.s14MediumText,
            ),
            firstDayOfWeek: 1,
          ),
          yearCellStyle: DateRangePickerYearCellStyle(
            textStyle: TextStyles.s14RegularText,
            todayTextStyle: TextStyles.s14BoldText.copyWith(
              color: ColorStyles.yellowGreen,
            ),
          ),
          todayHighlightColor: ColorStyles.zodiacBlue,
          selectionColor: ColorStyles.yellowGreen,
        ),
      ),
    );
  }
}
