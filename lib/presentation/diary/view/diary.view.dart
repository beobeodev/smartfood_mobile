import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/date_picker/diary_timeline.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_backdrop.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/fab/diary_fab.widget.dart';
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

class _DiaryView extends StatefulWidget {
  const _DiaryView();

  @override
  State<_DiaryView> createState() => _DiaryViewState();
}

class _DiaryViewState extends State<_DiaryView> {
  final ValueNotifier<bool> _animatingNotifier = ValueNotifier(false);

  @override
  void dispose() {
    _animatingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Column(
            children: [DiaryTimeline(), AppSize.h20, NutritionInDay()],
          ),
          DiaryBackdrop(animatingNotifier: _animatingNotifier)
        ],
      ),
      floatingActionButton: DiaryFab(
        animatingNotifier: _animatingNotifier,
      ),
      backgroundColor: ColorStyles.aliceBlue,
    );
  }
}
