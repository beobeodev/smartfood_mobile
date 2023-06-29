import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension DateTimeExtension on DateTime {
  int get daysInMonth => DateUtils.getDaysInMonth(year, month);

  String formatMonthYear(BuildContext context) {
    return DateFormat('M - yyyy').format(this);
  }

  bool isSameDateWith(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
