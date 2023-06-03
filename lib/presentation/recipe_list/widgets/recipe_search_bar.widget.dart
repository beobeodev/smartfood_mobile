import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_icon_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_search_bar.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/presentation/recipe_list/bloc/recipe_list.bloc.dart';
import 'package:smarthealthy/presentation/recipe_list/widgets/recipe_inherited.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class RecipeSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bool autoFocus = RecipeListProvider.of(context)?.autoFocus ?? false;

    return CommonSearchBar(
      autoFocus: autoFocus,
      actions: [
        const SizedBox(
          width: 10,
        ),
        AppIconButton(
          onPressed: () => Navigator.of(context).pushNamed(
            AppRouter.recipeFilter,
            arguments: context.read<RecipeListBloc>(),
          ),
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
