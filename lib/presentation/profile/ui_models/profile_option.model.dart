import 'package:flutter/material.dart';

class ProfileOptionUIModel {
  final String title;
  final dynamic icon;
  final String? route;

  ProfileOptionUIModel({required this.title, this.icon, this.route})
      : assert(icon != null && (icon is IconData || icon is Widget));
}
