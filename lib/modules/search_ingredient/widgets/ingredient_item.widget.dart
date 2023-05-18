import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/theme/text_styles.dart';
import 'package:smartfood/common/widgets/ellipsis_overflow_text.widget.dart';
import 'package:smartfood/data/models/ingredient.model.dart';
import 'package:smartfood/modules/ingredient_list/ingredient_list.dart';

class IngredientItem extends StatelessWidget {
  final IngredientModel ingredient;

  const IngredientItem({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<IngredientListBloc>()
            .add(IngredientListEvent.updated(ingredient));
      },
      child: BlocBuilder<IngredientListBloc, IngredientListState>(
        builder: (context, state) {
          final bool isSelected = state.ingredients.contains(ingredient);

          return Container(
            decoration: BoxDecoration(
              color: ColorStyles.antiFlashWhite,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isSelected ? ColorStyles.primary : Colors.transparent,
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                LayoutBuilder(
                  builder: (context, constrains) {
                    final imageWith = constrains.maxWidth - 15;

                    return ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.network(
                        'https://www.halfyourplate.ca/wp-content/uploads/2014/12/one-apple-with-leaves.jpg',
                        width: imageWith,
                        height: imageWith,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: EllipsisOverflowText(
                    ingredient.name,
                    textAlign: TextAlign.center,
                    style: TextStyles.regularText.copyWith(fontSize: 13.3),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
