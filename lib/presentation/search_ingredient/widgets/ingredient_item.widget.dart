import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/circle_network_image.widget.dart';
import 'package:smarthealthy/common/widgets/ellipsis_overflow_text.widget.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';

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
                color:
                    isSelected ? ColorStyles.yellowGreen : Colors.transparent,
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                LayoutBuilder(
                  builder: (context, constrains) {
                    final imageWith = constrains.maxWidth - 15;

                    return CircleNetworkImage(
                      'https://www.halfyourplate.ca/wp-content/uploads/2014/12/one-apple-with-leaves.jpg',
                      size: imageWith,
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Center(
                    child: EllipsisOverflowText(
                      ingredient.name,
                      textAlign: TextAlign.center,
                      style: TextStyles.s14RegularText,
                    ),
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
