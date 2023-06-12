import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/date_picker/diary_timeline.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/nutrition_in_day.widget.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DiaryBloc(),
      child: const _DiaryView(),
    );
  }
}

class _DiaryView extends StatelessWidget {
  const _DiaryView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [DiaryTimeline(), AppSize.h20, NutritionInDay()],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
      backgroundColor: ColorStyles.aliceBlue,
    );
  }
}
