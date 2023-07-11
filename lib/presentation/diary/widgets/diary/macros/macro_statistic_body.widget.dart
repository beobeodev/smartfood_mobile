import 'package:flutter/material.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_inherited.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/macros/macros_loading_success.widget.dart';

class MacroStatisticBody extends StatelessWidget {
  const MacroStatisticBody({super.key});

  @override
  Widget build(BuildContext context) {
    final diaryInfo = DiaryInherited.of(context)?.diaryInfo;

    return LayoutBuilder(
      builder: (context, constraints) {
        final itemSize = (constraints.maxWidth - 2 * 30) / 3;

        return diaryInfo == null
            ? MacrosLoadingSuccess(
                itemSize: itemSize,
              )
            : MacrosLoadingSuccess(
                diary: diaryInfo,
                key: const ValueKey('1'),
                itemSize: itemSize,
              );
      },
    );
  }
}
