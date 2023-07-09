import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_container.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/practice_list.widget.dart';

class AddPracticeBottomSheet extends StatelessWidget {
  const AddPracticeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SheetSearchContainer(
      title: LocaleKeys.diary_mode_workout.tr(),
      hintText: LocaleKeys.workout_find.tr(),
      child: const PracticeList(),
    );
  }
}
