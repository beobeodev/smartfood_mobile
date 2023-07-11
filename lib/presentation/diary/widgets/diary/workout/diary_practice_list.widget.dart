import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/practice.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/empty_text.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/practice_card.widget.dart';

class DiaryPracticeList extends StatelessWidget {
  final List<PracticeModel> practices;

  const DiaryPracticeList({super.key, required this.practices});

  @override
  Widget build(BuildContext context) {
    return practices.isEmpty
        ? const EmptyText()
        : ListView.separated(
            itemCount: practices.length,
            shrinkWrap: true,
            padding: AppSize.mealPadding,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, __) => AppSize.h10,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              return PracticeCard(
                practice: practices[index],
                enableFocus: true,
              );
            },
          );
  }
}
