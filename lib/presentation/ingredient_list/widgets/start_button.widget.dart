import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  void _startToRecipes(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRouter.searchRecipe,
      arguments: context.read<IngredientListBloc>().state.ingredients,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IngredientListBloc, IngredientListState>(
      builder: (context, state) {
        return Visibility(
          visible: state.ingredients.isNotEmpty,
          child: Positioned(
            bottom: context.bottomSpacing,
            left: AppSize.horizontalSpacing,
            right: AppSize.horizontalSpacing,
            child: AppRoundedButton(
              onPressed: () => _startToRecipes(context),
              content: LocaleKeys.button_start.tr(),
            ),
          ),
        );
      },
    );
  }
}
