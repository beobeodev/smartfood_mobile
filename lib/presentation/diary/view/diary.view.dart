import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/data/repositories/diary.repository.dart';
import 'package:smarthealthy/data/repositories/meal.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/diary/bloc/delete_meal/delete_meal.bloc.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_body.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/fab/diary_fab.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/need_login.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/nutrition_not_found.widget.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DiaryBloc(
            diaryRepository: getIt.get<DiaryRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) =>
              DeleteMealBloc(mealRepository: getIt.get<MealRepository>()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<DeleteMealBloc, DeleteMealState>(
            listener: _listenDeleteMealChanged,
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: _listenAuthChanged,
            listenWhen: (previous, current) {
              return previous.user?.totalCalories !=
                  current.user?.totalCalories;
            },
          ),
        ],
        child: const _DiaryView(),
      ),
    );
  }

  void _listenDeleteMealChanged(BuildContext context, DeleteMealState state) {
    DialogUtil.hideLoading(context);

    state.mapOrNull(
      loading: (_) => DialogUtil.showLoading(context),
      success: (success) => context
          .read<DiaryBloc>()
          .add(DiaryEvent.deleteMeal(success.mealId, success.type)),
      error: (_) => ToastUtil.showError(context),
    );
  }

  void _listenAuthChanged(BuildContext context, AuthState state) {
    context.read<DiaryBloc>().add(const DiaryEvent.refresh());
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
      return DiaryBody(
        animatingNotifier: _animatingNotifier,
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
          floatingActionButton: BlocBuilder<DiaryBloc, DiaryState>(
            builder: (context, state) {
              return Visibility(
                visible: state.status == QueryStatus.success && showFab,
                child: DiaryFab(
                  animatingNotifier: _animatingNotifier,
                ),
              );
            },
          ),
          backgroundColor: showFab ? ColorStyles.aliceBlue : Colors.white,
        );
      },
    );
  }
}
