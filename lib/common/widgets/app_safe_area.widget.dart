import 'package:flutter/material.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/app_size.dart';

class AppSafeArea extends StatelessWidget {
  final Widget child;
  final double paddingBottom;

  const AppSafeArea({super.key, required this.child, this.paddingBottom = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSize.horizontalSpace,
        context.paddingTop,
        AppSize.horizontalSpace,
        paddingBottom,
      ),
      child: child,
    );
  }
}
