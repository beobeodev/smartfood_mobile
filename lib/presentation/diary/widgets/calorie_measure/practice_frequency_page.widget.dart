import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/pratice_index.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/ui_models/practice_frequency.model.dart';

class PracticeFrequencyPage extends StatefulWidget {
  final void Function(double) setPracticeIndex;

  const PracticeFrequencyPage({
    super.key,
    required this.setPracticeIndex,
  });

  @override
  State<PracticeFrequencyPage> createState() => _PracticeFrequencyPageState();
}

class _PracticeFrequencyPageState extends State<PracticeFrequencyPage> {
  final _items = [
    PracticeFrequencyUIModel(
      title: LocaleKeys.measure_sedentary.tr(),
      index: PracticeIndex.light,
    ),
    PracticeFrequencyUIModel(
      title: LocaleKeys.measure_light.tr(),
      index: PracticeIndex.light,
    ),
    PracticeFrequencyUIModel(
      title: LocaleKeys.measure_moderate.tr(),
      index: PracticeIndex.light,
    ),
    PracticeFrequencyUIModel(
      title: LocaleKeys.measure_heavy.tr(),
      index: PracticeIndex.light,
    ),
    PracticeFrequencyUIModel(
      title: LocaleKeys.measure_very_heavy.tr(),
      index: PracticeIndex.light,
    )
  ];
  final ValueNotifier<int> _selectedNotifier = ValueNotifier(0);

  void _onTapItem(int newIndex) {
    _selectedNotifier.value = newIndex;

    widget.setPracticeIndex(_items[newIndex].index.value);
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
            valueListenable: _selectedNotifier,
            builder: (context, value, child) {
              return ListView.separated(
                separatorBuilder: (_, __) => AppSize.h10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onTapItem(index),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: index == value
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
                        _items[index].title,
                        style: TextStyles.s14MediumText,
                      ),
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: _items.length,
              );
            },
          ),
        ],
      ),
    );
  }
}
