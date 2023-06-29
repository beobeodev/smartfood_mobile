import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';

class SelectedDishList extends StatelessWidget {
  final ValueNotifier<List<RecipeModel>> dishesNotifier;

  const SelectedDishList({super.key, required this.dishesNotifier});

  void _onDismissed(RecipeModel recipe) {
    dishesNotifier.value = dishesNotifier.value
        .where((element) => element.id != recipe.id)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, child) {
        return ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 10),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return DishCard(
              recipe: value[index],
              onDismissed: _onDismissed,
            );
          },
          separatorBuilder: (_, __) => AppSize.h10,
          itemCount: value.length,
        );
      },
      valueListenable: dishesNotifier,
    );
  }
}
