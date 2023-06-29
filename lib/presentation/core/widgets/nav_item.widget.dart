import 'package:flutter/material.dart';
import 'package:smarthealthy/common/constants/constants.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/generated/assets.gen.dart';

class NavItem implements BottomNavigationBarItem {
  final SvgGenImage iconSvg;
  final String title;
  final double? iconSize;

  NavItem({required this.iconSvg, required this.title, this.iconSize});

  @override
  Widget get activeIcon => iconSvg.svg(
        colorFilter: colorSvg(
          ColorStyles.primary,
        ),
      );

  @override
  Color? get backgroundColor => null;

  @override
  Widget get icon => iconSvg.svg(
        width: iconSize,
        colorFilter: colorSvg(
          ColorStyles.gray300,
        ),
      );

  @override
  String? get label => title;

  @override
  String? get tooltip => null;
}
