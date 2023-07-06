import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/presentation/auth/auth.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/ui_models/diary_info.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_info.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/diary_inherited.widget.dart';

class NutritionInDay extends StatelessWidget {
  const NutritionInDay({super.key});

  DiaryInfoUIModel _getDiaryInfo(BuildContext context, DiaryState state) {
    final currentDiary = state.currentDiary;

    return DiaryInfoUIModel(
      nutrition: currentDiary.nutrition ??
          context.read<AuthBloc>().state.user!.nutrition,
      breakfast: currentDiary.breakfast,
      lunch: currentDiary.lunch,
      dinner: currentDiary.dinner,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        width: context.width,
        padding: const EdgeInsets.fromLTRB(
          AppSize.horizontalSpacing,
          AppSize.horizontalSpacing,
          AppSize.horizontalSpacing,
          0,
        ),
        child: BlocBuilder<DiaryBloc, DiaryState>(
          builder: (context, state) {
            switch (state.status) {
              case QueryStatus.loading:
                return const DiaryInherited(child: DiaryInfo());
              case QueryStatus.success:
                return DiaryInherited(
                  diaryInfo: _getDiaryInfo(context, state),
                  child: DiaryInfo(
                    key: UniqueKey(),
                  ),
                );
              case QueryStatus.error:
                return CommonError(
                  onRefresh: () {
                    context
                        .read<DiaryBloc>()
                        .add(DiaryEvent.getByDay(date: state.currentDate));
                  },
                );
            }
          },
        ),
      ),
    );
  }
}
