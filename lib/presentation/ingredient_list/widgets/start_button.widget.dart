import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  void _startToRecipes(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRouter.recipeList,
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
