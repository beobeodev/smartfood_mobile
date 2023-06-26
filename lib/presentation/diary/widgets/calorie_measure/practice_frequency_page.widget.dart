import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/pratice_index.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
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
    const PracticeFrequencyUIModel(
      title: 'Ít vận động',
      index: PracticeIndex.light,
    ),
    const PracticeFrequencyUIModel(
      title: 'Vận động nhẹ (1-3 lần/tuần)',
      index: PracticeIndex.light,
    ),
    const PracticeFrequencyUIModel(
      title: 'Vận động vừa phải (3-5 lần/tuần)',
      index: PracticeIndex.light,
    ),
    const PracticeFrequencyUIModel(
      title: 'Vận động nặng (6-7 lần/tuần)',
      index: PracticeIndex.light,
    ),
    const PracticeFrequencyUIModel(
      title: 'Vận động rất nặng (1-2 lần/ngày)',
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
            'Tần suất tập luyện thể dục của bạn như thế nào?',
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
