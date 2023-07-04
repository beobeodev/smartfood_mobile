import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/data/repositories/diary.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/date_picker/diary_timeline.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_backdrop.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/fab/diary_fab.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/need_login.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/nutrition_in_day.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/nutrition_not_found.widget.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DiaryBloc(
        diaryRepository: getIt.get<DiaryRepository>(),
      ),
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

  Widget _getBody(bool? hasNutrition) {
    if (hasNutrition == null) {
      return const NeedLoginError();
    } else if (!hasNutrition) {
      return const NutritionNotFound();
    } else {
      return Stack(
        children: [
          const Column(
            children: [DiaryTimeline(), AppSize.h20, NutritionInDay()],
          ),
          DiaryBackdrop(animatingNotifier: _animatingNotifier)
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final hasNutrition = state.user?.hasNutrition;
        final showFab = hasNutrition ?? false;

        return Scaffold(
          body: _getBody(hasNutrition),
          floatingActionButton: showFab
              ? DiaryFab(
                  animatingNotifier: _animatingNotifier,
                )
              : null,
          backgroundColor: showFab ? ColorStyles.aliceBlue : Colors.white,
        );
      },
    );
  }
}
