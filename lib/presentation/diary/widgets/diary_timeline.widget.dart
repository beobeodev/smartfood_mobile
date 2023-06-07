import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/date_picker_timeline/date_picker_timeline.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/presentation/diary/widgets/sf_date_picker_dialog.widget.dart';

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
        );
      },
    );

    if (selectedDate != null) {
      _selectedDateNotifier.value = selectedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSize.horizontalSpace,
            0,
            AppSize.horizontalSpace,
            10,
          ),
          child: GestureDetector(
            onTap: _showDialog,
            child: Row(
              children: [
                Assets.icons.diary.calendar.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.primary,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ValueListenableBuilder(
                  valueListenable: _selectedDateNotifier,
                  builder: (context, value, child) {
                    return Text(
                      value.formatMonthYear(context),
                      style: TextStyles.s17MediumText.copyWith(
                        color: ColorStyles.primary,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: _selectedDateNotifier,
          builder: (context, value, child) {
            return DatePickerTimeline(
              startDate: value,
              controller: _datePickerController,
            );
          },
        )
      ],
    );
  }
}
