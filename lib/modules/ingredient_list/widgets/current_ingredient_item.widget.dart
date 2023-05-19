import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/theme/text_styles.dart';
import 'package:smartfood/common/widgets/circle_network_image.widget.dart';
import 'package:smartfood/data/models/ingredient.model.dart';
import 'package:smartfood/modules/ingredient_list/ingredient_list.dart';
import 'package:smartfood/modules/ingredient_list/widgets/dismiss_background.widget.dart';

class CurrentIngredientItem extends StatelessWidget {
  final IngredientModel ingredient;

  const CurrentIngredientItem({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorStyles.gray100),
      ),
      child: Dismissible(
        key: ValueKey(ingredient.id),
        resizeDuration: const Duration(milliseconds: 100),
        onDismissed: (_) {
          context
              .read<IngredientListBloc>()
              .add(IngredientListEvent.updated(ingredient));
        },
        background: const DismissBackground(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  final imageSize = constraints.maxHeight;

                  return CircleNetworkImage(
                    'https://www.halfyourplate.ca/wp-content/uploads/2014/12/one-apple-with-leaves.jpg',
                    size: imageSize,
                  );
                },
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  ingredient.name,
                  style: TextStyles.s14MediumText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
