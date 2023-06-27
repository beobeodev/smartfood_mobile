import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/date_picker/diary_timeline.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_backdrop.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/fab/diary_fab.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/nutrition_in_day.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/nutrition_not_found.widget.dart';

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
  late final bool hasNutrition;

  @override
  void initState() {
    hasNutrition = context.read<AuthBloc>().state.user!.hasNutrition;

    super.initState();
  }

  @override
  void dispose() {
    _animatingNotifier.dispose();

    super.dispose();
  }

  Widget _getBody() {
    if (hasNutrition) {
      return Stack(
        children: [
          const Column(
            children: [DiaryTimeline(), AppSize.h20, NutritionInDay()],
          ),
          DiaryBackdrop(animatingNotifier: _animatingNotifier)
        ],
      );
    } else {
      return const NutritionNotFound();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      floatingActionButton: hasNutrition
          ? DiaryFab(
              animatingNotifier: _animatingNotifier,
            )
          : null,
      backgroundColor: hasNutrition ? ColorStyles.aliceBlue : Colors.white,
    );
  }
}
