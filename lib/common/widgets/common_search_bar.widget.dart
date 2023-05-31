import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/common_search_field.widget.dart';
import 'package:smarthealthy/common/widgets/custom_app_bar.widget.dart';

class CommonSearchBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final List<Widget>? actions;
  final String? hintText;
  final bool autoFocus;

  const CommonSearchBar({
    super.key,
    this.onFieldSubmitted,
    this.onTap,
    this.actions,
    this.hintText,
    this.autoFocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: CommonSearchField(
        hintText: hintText,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        autoFocus: autoFocus,
      ),
      titleColor: ColorStyles.primary,
      actions: [
        if (actions != null) ...actions!,
        const SizedBox(
          width: AppSize.horizontalSpace,
        ),
      ],
      elevation: 0.1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.appBarHeight);
}
