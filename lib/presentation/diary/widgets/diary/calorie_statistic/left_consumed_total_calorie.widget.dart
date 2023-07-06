import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/calorie_statistic/calorie_loading_item.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/calorie_statistic/calorie_statistic_item.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_inherited.widget.dart';

class LeftConsumedTotalCalorie extends StatelessWidget {
  final double itemSize;

  const LeftConsumedTotalCalorie({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    final diaryInfo = DiaryInherited.of(context)?.diaryInfo;

    return SizedBox(
      height: itemSize,
      width: itemSize,
      child: Center(
        child: diaryInfo == null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    List.generate(3, (index) => const CalorieLoadingItem()),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalorieStatisticItem(
                    value: diaryInfo.nutrition.calorie,
                    title: LocaleKeys.diary_need_to_load.tr(),
                  ),
                  CalorieStatisticItem(
                    value: diaryInfo.nutrition.calorie,
                    title: LocaleKeys.diary_loaded.tr(),
                  ),
                  CalorieStatisticItem(
                    value: diaryInfo.nutrition.calorie,
                    title: LocaleKeys.diary_consume.tr(),
                  )
                ],
              ),
      ),
    );
  }
}
