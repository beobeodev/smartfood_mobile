import 'package:flutter/material.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/app_size.dart';

class AppSafeArea extends StatelessWidget {
  final Widget child;

  const AppSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSize.horizontalSpace,
        context.paddingTop,
        AppSize.horizontalSpace,
        0,
      ),
      child: child,
    );
  }
}
