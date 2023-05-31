import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_back_button.widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isCenterTitle;
  final bool automaticallyImplyLeading;

  final Color backgroundColor;
  final Color titleColor;

  final double toolbarHeight;
  final double titleSpacing;
  final double elevation;
  final double bottomSize;

  final dynamic title;
  final Widget? bottom;
  final List<Widget> actions;

  final Function()? onLeadingAction;

  const CustomAppBar({
    super.key,
    this.isCenterTitle = true,
    this.automaticallyImplyLeading = true,
    this.backgroundColor = Colors.white,
    this.titleColor = ColorStyles.zodiacBlue,
    this.toolbarHeight = AppSize.appBarHeight,
    this.titleSpacing = AppSize.titleSpacing,
    this.elevation = 0,
    this.bottomSize = 45,
    required this.title,
    this.bottom,
    this.actions = const [],
    this.onLeadingAction,
  }) : assert(
          title is Widget || title is String,
          'Title must be a widget or string ',
        );

  bool _canPop(BuildContext context) {
    return automaticallyImplyLeading && Navigator.of(context).canPop();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: isCenterTitle,
      backgroundColor: backgroundColor,
      elevation: elevation,
      toolbarHeight: toolbarHeight,
      titleSpacing: _canPop(context) ? 0 : titleSpacing,
      automaticallyImplyLeading: false,
      title: title is Widget
          ? title
          : Text(
              title,
              style:
                  TextStyles.boldText.copyWith(color: titleColor, fontSize: 16),
            ),
      bottom: bottom != null
          ? PreferredSize(
              preferredSize: Size.fromHeight(bottomSize),
              child: bottom!,
            )
          : null,
      actions: actions,
      leading: _canPop(context) ? const AppBackButton() : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
