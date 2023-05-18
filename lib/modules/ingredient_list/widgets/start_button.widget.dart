import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/app_rounded_button.widget.dart';
import 'package:smartfood/configs/app_routes.dart';
import 'package:smartfood/modules/ingredient_list/ingredient_list.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  void _startToRecipes(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.recipeList,
      arguments: context
          .read<IngredientListBloc>()
          .state
          .ingredients
          .map((e) => e.id)
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: context.paddingBottom,
      left: AppSize.horizontalSpace,
      right: AppSize.horizontalSpace,
      child: AppRoundedButton(
        onPressed: () => _startToRecipes(context),
        content: 'Bắt đầu',
        backgroundColor: ColorStyles.primary,
      ),
    );
  }
}
