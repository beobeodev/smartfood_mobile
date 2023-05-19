import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/app_text_form_field.widget.dart';
import 'package:smartfood/common/widgets/custom_app_bar.widget.dart';
import 'package:unicons/unicons.dart';

class RecipeListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: const AppTextFormField(
        hintText: 'Tìm kiếm',
        prefixIcon: Icons.search,
        extendField: false,
        borderRadius: 1000,
        borderColor: Colors.transparent,
        prefixIconColor: ColorStyles.primary,
        fillColor: ColorStyles.antiFlashWhite,
        focusedBorderColor: Colors.transparent,
      ),
      titleSpacing: 0,
      backgroundColor: Colors.white,
      titleColor: ColorStyles.primary,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            UniconsLine.filter,
            color: ColorStyles.primary,
          ),
        )
      ],
      elevation: 0.1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.appBarHeight);
}
