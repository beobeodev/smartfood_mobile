import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/constants.dart';
import 'package:smarthealthy/common/enums/diary_mode.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/utils/sheet.util.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/cubit/add_practice_cubit.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/ui_models/diary_mode.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/fab/diary_mode_item.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/add_practice_bottom_sheet.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class DiaryFab extends StatefulWidget {
  final ValueNotifier<bool> animatingNotifier;
  final bool showFab;

  const DiaryFab({
    super.key,
    required this.animatingNotifier,
    required this.showFab,
  });

  @override
  State<DiaryFab> createState() => _DiaryFabState();
}

class _DiaryFabState extends State<DiaryFab> with TickerProviderStateMixin {
  final List<DiaryModeUIModel> _diaryModes = [
    DiaryModeUIModel(
      title: LocaleKeys.diary_mode_meal.tr(),
      backgroundColor: ColorStyles.yellowGreen,
      icon: Assets.icons.diary.meal.svg(
        width: 18,
        colorFilter: colorSvg(Colors.white),
      ),
      mode: DiaryMode.meal,
      route: AppRouter.addMealPlan,
      beginTime: 0,
    ),
    DiaryModeUIModel(
      title: LocaleKeys.diary_mode_workout.tr(),
      backgroundColor: ColorStyles.blue300,
      icon: Assets.icons.diary.workout.svg(
        width: 18,
        colorFilter: colorSvg(Colors.white),
      ),
      mode: DiaryMode.workout,
      beginTime: 100,
    )
  ];

  @override
  void initState() {
    _setAnimation();
    _listenAnimating();

    super.initState();
  }

  void _setAnimation() {
    for (var i = 0; i < _diaryModes.length; ++i) {
      final controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 80),
      );

      final animation = Tween(begin: 0.1, end: 1.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: Curves.linear,
        ),
      );

      _diaryModes[i] = _diaryModes[i].copyWith(
        controller: controller,
        animation: animation,
      );
    }
  }

  void _listenAnimating() {
    widget.animatingNotifier.addListener(() async {
      if (widget.animatingNotifier.value) {
        for (var i = 0; i < _diaryModes.length; ++i) {
          final mode = _diaryModes[i];

          Future.delayed(Duration(milliseconds: mode.beginTime))
              .then((value) => mode.controller?.forward());
        }
      } else {
        for (var i = _diaryModes.length - 1; i >= 0; --i) {
          final mode = _diaryModes[i];

          mode.controller?.reverse();
          await Future.delayed(
            Duration(milliseconds: mode.beginTime),
          );
        }
      }
    });
  }

  Future<void> _onPressed([DiaryMode? mode]) async {
    widget.animatingNotifier.value = !widget.animatingNotifier.value;

    if (mode == DiaryMode.workout) {
      SheetUtil.show(
        context,
        BlocProvider.value(
          value: context.read<AddPracticeCubit>(),
          child: const AddPracticeBottomSheet(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiaryBloc, DiaryState>(
      builder: (context, state) {
        return Visibility(
          visible: state.status == QueryStatus.success && widget.showFab,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListView.separated(
                itemCount: _diaryModes.length,
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return DiaryModeItem(
                    mode: _diaryModes[index],
                    onPressed: _onPressed,
                  );
                },
                separatorBuilder: (_, __) {
                  return AppSize.h10;
                },
              ),
              AppSize.h10,
              FloatingActionButton(
                onPressed: () => _onPressed(),
                backgroundColor: ColorStyles.primary,
                foregroundColor: ColorStyles.primary,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
