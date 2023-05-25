import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/recipe_list/widgets/recipe_card.widget.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(AppSize.horizontalSpace),
      itemCount: 20,
      separatorBuilder: (_, __) => const SizedBox(
        height: 20,
      ),
      itemBuilder: (context, index) {
        return const RecipeCard();
      },
    );
  }
}
