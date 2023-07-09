import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/practice_card.widget.dart';

class PracticeList extends StatelessWidget {
  const PracticeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) {
        return PracticeCard(index: index);
      },
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.horizontalSpacing,
        vertical: 10,
      ),
      separatorBuilder: (_, __) {
        return AppSize.h10;
      },
    );
  }
}
