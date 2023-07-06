import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/pratice_mode.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/ui_models/practice_frequency.model.dart';

class PracticeFrequencyPage extends StatefulWidget {
  final void Function(PracticeMode) setPracticeIndex;
  final PracticeMode initIndex;

  const PracticeFrequencyPage({
    super.key,
    required this.setPracticeIndex,
    required this.initIndex,
  });

  @override
  State<PracticeFrequencyPage> createState() => _PracticeFrequencyPageState();
}

class _PracticeFrequencyPageState extends State<PracticeFrequencyPage> {
  late final ValueNotifier<List<PracticeFrequencyUIModel>> _itemsNotifier;

  @override
  void initState() {
    _itemsNotifier = ValueNotifier([
      PracticeFrequencyUIModel(
        title: LocaleKeys.measure_sedentary.tr(),
        index: PracticeMode.rare,
        isSelected: PracticeMode.rare == widget.initIndex,
      ),
      PracticeFrequencyUIModel(
        title: LocaleKeys.measure_light.tr(),
        index: PracticeMode.light,
        isSelected: PracticeMode.light == widget.initIndex,
      ),
      PracticeFrequencyUIModel(
        title: LocaleKeys.measure_moderate.tr(),
        index: PracticeMode.medium,
        isSelected: PracticeMode.medium == widget.initIndex,
      ),
      PracticeFrequencyUIModel(
        title: LocaleKeys.measure_heavy.tr(),
        index: PracticeMode.heavy,
        isSelected: PracticeMode.heavy == widget.initIndex,
      ),
      PracticeFrequencyUIModel(
        title: LocaleKeys.measure_very_heavy.tr(),
        index: PracticeMode.veryHeavy,
        isSelected: PracticeMode.veryHeavy == widget.initIndex,
      )
    ]);

    super.initState();
  }

  @override
  void dispose() {
    _itemsNotifier.dispose();
    super.dispose();
  }

  void _onTapItem(int newIndex) {
    _itemsNotifier.value = _itemsNotifier.value
        .mapIndexed((index, e) => e.copyWith(isSelected: index == newIndex))
        .toList();

    widget.setPracticeIndex(_itemsNotifier.value[newIndex].index);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSize.horizontalSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.measure_practice_question.tr(),
            style: TextStyles.s17MediumText,
          ),
          AppSize.h20,
          ValueListenableBuilder(
            valueListenable: _itemsNotifier,
            builder: (context, value, child) {
              return ListView.separated(
                separatorBuilder: (_, __) => AppSize.h10,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = value[index];

                  return GestureDetector(
                    onTap: () => _onTapItem(index),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: item.isSelected
                              ? ColorStyles.primary
                              : ColorStyles.gray200,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: Text(
                        item.title,
                        style: TextStyles.s14MediumText,
                      ),
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: _itemsNotifier.value.length,
              );
            },
          ),
        ],
      ),
    );
  }
}
