import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_back_button.widget.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isCenterTitle;
  final bool automaticallyImplyLeading;

  final Color backgroundColor;
  final Color titleColor;

  final double toolbarHeight;
  final double titleSpacing;
  final double? elevation;
  final double bottomSize;
  final double? leadingWidth;

  final dynamic title;
  final List<Widget> actions;

  final Widget? bottom;
  final Widget? leading;

  final void Function()? onLeadingAction;

  const CommonAppBar({
    super.key,
    this.isCenterTitle = true,
    this.automaticallyImplyLeading = true,
    this.backgroundColor = Colors.white,
    this.titleColor = ColorStyles.zodiacBlue,
    this.toolbarHeight = AppSize.appBarHeight,
    this.titleSpacing = AppSize.titleSpacing,
    this.elevation,
    this.bottomSize = 45,
    this.leadingWidth,
    this.title,
    this.bottom,
    this.leading,
    this.actions = const [],
    this.onLeadingAction,
  }) : assert(
          title == null || title is Widget || title is String,
          'Title must be a widget or string',
        );

  bool _canPop(BuildContext context) {
    return automaticallyImplyLeading && Navigator.of(context).canPop();
  }

  Widget? _getTitle() {
    if (title == null) return null;

    return title is Widget
        ? title
        : Text(
            title,
            style: TextStyles.boldText
                .copyWith(color: titleColor, fontSize: 20.sp),
          );
  }

  double _getElevation() {
    if (elevation != null) return elevation!;

    return Platform.isIOS ? 0.1 : 0.4;
  }

  Widget? _getLeading(BuildContext context) {
    if (leading != null) return leading;

    return _canPop(context)
        ? CommonBackButton(
            onAction: onLeadingAction,
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: isCenterTitle,
      backgroundColor: backgroundColor,
      elevation: _getElevation(),
      toolbarHeight: toolbarHeight,
      titleSpacing: _canPop(context) ? 0 : titleSpacing,
      automaticallyImplyLeading: false,
      title: _getTitle(),
      leadingWidth: leadingWidth,
      bottom: bottom != null
          ? PreferredSize(
              preferredSize: Size.fromHeight(bottomSize),
              child: bottom!,
            )
          : null,
      actions: actions,
      leading: _getLeading(context),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
