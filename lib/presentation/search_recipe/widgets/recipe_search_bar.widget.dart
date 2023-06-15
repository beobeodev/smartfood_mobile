import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/common_icon_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_search_bar.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/presentation/search_recipe/bloc/search_recipe.bloc.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_inherited.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class RecipeSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeSearchBar({super.key});

  void _onSearch(BuildContext context, String value) {
    context
        .read<SearchRecipeBloc>()
        .add(SearchRecipeEvent.getAll(searchKey: value));
  }

  void _navigateToRecipeFilter(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRouter.recipeFilter,
      arguments: context.read<SearchRecipeBloc>(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool autoFocus = RecipeListProvider.of(context)?.autoFocus ?? false;

    return CommonSearchBar(
      autoFocus: autoFocus,
      onFieldSubmitted: (value) => _onSearch(context, value),
      actions: [
        AppSize.w10,
        CommonIconButton(
          onPressed: () => _navigateToRecipeFilter(context),
          icon: Assets.icons.filter.svg(
            colorFilter:
                const ColorFilter.mode(ColorStyles.primary, BlendMode.srcIn),
          ),
          iconSize: 22,
          iconColor: ColorStyles.primary,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.appBarHeight);
}
