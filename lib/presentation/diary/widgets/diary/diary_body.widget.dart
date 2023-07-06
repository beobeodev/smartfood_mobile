import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/date_picker/diary_timeline.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_backdrop.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/nutrition_in_day.widget.dart';

class DiaryBody extends StatefulWidget {
  final ValueNotifier<bool> animatingNotifier;
  const DiaryBody({super.key, required this.animatingNotifier});

  @override
  State<DiaryBody> createState() => _DiaryBodyState();
}

class _DiaryBodyState extends State<DiaryBody> {
  @override
  void initState() {
    context.read<DiaryBloc>().add(const DiaryEvent.getByDay());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiaryBloc, DiaryState>(
      builder: (context, state) {
        return Stack(
          children: [
            const Column(
              children: [DiaryTimeline(), AppSize.h20, NutritionInDay()],
            ),
            DiaryBackdrop(animatingNotifier: widget.animatingNotifier)
          ],
        );
      },
    );
  }
}
