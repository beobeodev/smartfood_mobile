import 'package:flutter/material.dart';
import 'package:smarthealthy/presentation/diary/ui_models/diary_info.model.dart';

class DiaryInherited extends InheritedWidget {
  final DiaryInfoUIModel? diaryInfo;

  const DiaryInherited({super.key, required super.child, this.diaryInfo});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static DiaryInherited? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DiaryInherited>();
}
