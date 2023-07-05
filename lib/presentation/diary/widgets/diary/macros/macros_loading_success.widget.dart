import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/ui_models/macros.model.dart';
import 'package:smarthealthy/presentation/diary/ui_models/nutrition_wrapper.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/macros/macros_item.widget.dart';

class MacrosLoadingSuccess extends StatefulWidget {
  final NutritionWrapper? nutrition;
  final double itemSize;

  const MacrosLoadingSuccess({
    super.key,
    this.nutrition,
    required this.itemSize,
  });

  @override
  State<MacrosLoadingSuccess> createState() => _MacrosLoadingSuccessState();
}

class _MacrosLoadingSuccessState extends State<MacrosLoadingSuccess> {
  late final List<MacrosUIModel> _items;

  @override
  void initState() {
    log(widget.nutrition.toString());

    _items = [
      MacrosUIModel(
        title: LocaleKeys.macros_protein.tr(),
        value: widget.nutrition?.protein ?? 0,
        consume: 20,
        color: ColorStyles.mediumAquamarine,
      ),
      MacrosUIModel(
        title: LocaleKeys.macros_carbs.tr(),
        value: widget.nutrition?.carbs ?? 0,
        consume: 60,
        color: ColorStyles.lightSkyBlue,
      ),
      MacrosUIModel(
        title: LocaleKeys.macros_fat.tr(),
        value: widget.nutrition?.fat ?? 0,
        consume: 30,
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
          isLoading: widget.nutrition == null,
        );
      }),
    );
  }
}
