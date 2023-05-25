import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_icon_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_search_bar.widget.dart';
import 'package:unicons/unicons.dart';

class RecipeSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonSearchBar(
      actions: [
        AppIconButton(
          onPressed: () {},
          icon: UniconsLine.filter,
          iconColor: ColorStyles.primary,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.appBarHeight);
}
