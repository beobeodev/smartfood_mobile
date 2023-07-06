import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';

class MealList extends StatelessWidget {
  final List<MealModel>? dishes;
  final void Function(String) onDelete;

  const MealList({super.key, required this.dishes, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return (dishes == null || dishes!.isEmpty)
        ? Text(
            LocaleKeys.texts_no_data_yet.tr(),
            style: TextStyles.s14MediumText,
          )
        : ListView.separated(
            itemCount: dishes!.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10),
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, __) => AppSize.h10,
            itemBuilder: (context, index) {
              final meal = dishes![index];

              return DishCard(
                enabled: true,
                recipe: meal.recipe,
                onDelete: () => onDelete(meal.id),
              );
            },
          );
  }
}
