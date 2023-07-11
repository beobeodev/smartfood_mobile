import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';

class PracticeContainer extends StatelessWidget {
  final Widget child;
  final bool showShadow;

  const PracticeContainer({
    super.key,
    required this.child,
    this.showShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSize.diaryCardRadius),
        boxShadow: showShadow ? AppTheme.primaryShadow : null,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 10.h,
      ),
      child: child,
    );
  }
}
