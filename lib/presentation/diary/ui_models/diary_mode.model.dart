import 'package:flutter/material.dart';

import 'package:smarthealthy/common/enums/diary_mode.enum.dart';

class DiaryModeUIModel {
  final String title;
  final Color backgroundColor;
  final Widget icon;
  final String? route;
  final DiaryMode mode;
  AnimationController? controller;
  Animation<double>? animation;
  final int beginTime;

  DiaryModeUIModel({
    required this.title,
    required this.backgroundColor,
    required this.icon,
    this.route,
    required this.mode,
    this.controller,
    this.animation,
    required this.beginTime,
  });

  DiaryModeUIModel copyWith({
    String? title,
    Color? backgroundColor,
    Widget? icon,
    String? route,
    DiaryMode? mode,
    AnimationController? controller,
    Animation<double>? animation,
    int? beginTime,
  }) {
    return DiaryModeUIModel(
      title: title ?? this.title,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      icon: icon ?? this.icon,
      route: route ?? this.route,
      mode: mode ?? this.mode,
      controller: controller ?? this.controller,
      animation: animation ?? this.animation,
      beginTime: beginTime ?? this.beginTime,
    );
  }
}
