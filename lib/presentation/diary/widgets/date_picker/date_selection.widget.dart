import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/assets.gen.dart';

class DateSelection extends StatelessWidget {
  final Future<void> Function() onTap;
  final ValueNotifier<DateTime> selectedDateNotifier;

  const DateSelection({
    super.key,
    required this.onTap,
    required this.selectedDateNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSize.horizontalSpacing,
        0,
        AppSize.horizontalSpacing,
        10,
      ),
      child: GestureDetector(
        onTap: onTap,
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
              valueListenable: selectedDateNotifier,
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
    );
  }
}
