import 'package:flutter/material.dart';

class DiaryModeUIModel {
  final String title;
  final Color backgroundColor;
  final Widget icon;
  final String route;
  AnimationController? controller;
  Animation<double>? animation;
  final int beginTime;

  DiaryModeUIModel({
    required this.title,
    required this.backgroundColor,
    required this.icon,
    required this.route,
    this.controller,
    this.animation,
    required this.beginTime,
  });

  DiaryModeUIModel copyWith({
    String? title,
    Color? backgroundColor,
    Widget? icon,
    String? route,
    AnimationController? controller,
    Animation<double>? animation,
    int? beginTime,
  }) {
    return DiaryModeUIModel(
      title: title ?? this.title,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      icon: icon ?? this.icon,
      route: route ?? this.route,
      controller: controller ?? this.controller,
      animation: animation ?? this.animation,
      beginTime: beginTime ?? this.beginTime,
    );
  }
}
