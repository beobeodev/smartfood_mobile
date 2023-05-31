import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

abstract class TextStyles {
  // Regular
  static const TextStyle regularText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w400,
  );
  static TextStyle s11RegularText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w400,
    fontSize: 11.sp,
  );
  static TextStyle s14RegularText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle s17RegularText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w400,
    fontSize: 17.sp,
  );

  // Medium
  static TextStyle mediumText = const TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w500,
  );
  static TextStyle s11MediumText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w500,
    fontSize: 11.sp,
  );
  static TextStyle s14MediumText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle s17MediumText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w500,
    fontSize: 17.sp,
  );

  // Bold
  static TextStyle boldText = const TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w600,
  );
  static TextStyle s11BoldText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w600,
    fontSize: 11.sp,
  );
  static TextStyle s14BoldText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
  );
  static TextStyle s17BoldText = TextStyle(
    color: ColorStyles.zodiacBlue,
    fontWeight: FontWeight.w600,
    fontSize: 17.sp,
  );
}
