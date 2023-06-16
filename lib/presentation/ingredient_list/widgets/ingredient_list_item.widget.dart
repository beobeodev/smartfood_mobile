import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/circle_network_image.widget.dart';
import 'package:smarthealthy/common/widgets/common_dismissible.widget.dart'
    as common;
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';
import 'package:smarthealthy/presentation/ingredient_list/widgets/dismiss_background.widget.dart';

class IngredientListItem extends StatelessWidget {
  final IngredientModel ingredient;
  final bool hasDismiss;

  const IngredientListItem({
    super.key,
    required this.ingredient,
    this.hasDismiss = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: common.CommonDismissible(
        key: ValueKey(ingredient.id),
        direction: hasDismiss
            ? common.DismissDirection.endToStart
            : common.DismissDirection.none,
        resizeDuration: const Duration(milliseconds: 100),
        onDismissed: (_) {
          context
              .read<IngredientListBloc>()
              .add(IngredientListEvent.updated(ingredient));
        },
        background: const DismissBackground(),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorStyles.gray100),
          ),
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
              AppSize.w15,
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
    // return Container(
    //   height: 55,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(10),
    //     border: Border.all(color: ColorStyles.gray100),
    //   ),
    //   child: ,
    // );
  }
}
