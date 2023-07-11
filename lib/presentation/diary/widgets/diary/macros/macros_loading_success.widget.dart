import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/ui_models/diary_info.model.dart';
import 'package:smarthealthy/presentation/diary/ui_models/macros.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/macros/macros_item.widget.dart';

class MacrosLoadingSuccess extends StatefulWidget {
  final DiaryInfoUIModel? diary;
  final double itemSize;

  const MacrosLoadingSuccess({
    super.key,
    this.diary,
    required this.itemSize,
  });

  @override
  State<MacrosLoadingSuccess> createState() => _MacrosLoadingSuccessState();
}

class _MacrosLoadingSuccessState extends State<MacrosLoadingSuccess> {
  late final List<MacrosUIModel> _items;

  @override
  void initState() {
    final nutrition = widget.diary?.nutrition;
    final diary = widget.diary;

    _items = [
      MacrosUIModel(
        title: LocaleKeys.macros_protein.tr(),
        value: nutrition?.protein ?? 0,
        consume: diary?.loadedProtein ?? 0,
        color: ColorStyles.mediumAquamarine,
      ),
      MacrosUIModel(
        title: LocaleKeys.macros_carbs.tr(),
        value: nutrition?.carbs ?? 0,
        consume: diary?.loadedCarbs ?? 0,
        color: ColorStyles.lightSkyBlue,
      ),
      MacrosUIModel(
        title: LocaleKeys.macros_fat.tr(),
        value: nutrition?.fat ?? 0,
        consume: diary?.loadedFat ?? 0,
        color: ColorStyles.brilliantLavender,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(_items.length, (index) {
        return MacrosItem(
          item: _items[index],
          width: widget.itemSize,
          isLoading: widget.diary == null,
        );
      }),
    );
  }
}
