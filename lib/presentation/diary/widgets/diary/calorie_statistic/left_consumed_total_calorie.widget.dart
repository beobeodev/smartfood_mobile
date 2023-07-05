import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/calorie_statistic/calorie_loading_item.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/calorie_statistic/calorie_statistic_item.widget.dart';

class LeftConsumedTotalCalorie extends StatelessWidget {
  final double itemSize;

  const LeftConsumedTotalCalorie({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemSize,
      width: itemSize,
      child: Center(
        child: BlocBuilder<DiaryBloc, DiaryState>(
          builder: (context, state) {
            switch (state.status) {
              case QueryStatus.success:
                final oldCalories = state.currentDiary.totalCalories;

                final totalCalories = (oldCalories == 0 || oldCalories == null)
                    ? context.read<AuthBloc>().state.user!.totalCalories
                    : oldCalories;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalorieStatisticItem(
                      value: totalCalories,
                      title: LocaleKeys.diary_need_to_load.tr(),
                    ),
                    CalorieStatisticItem(
                      value: totalCalories,
                      title: LocaleKeys.diary_loaded.tr(),
                    ),
                    CalorieStatisticItem(
                      value: totalCalories,
                      title: LocaleKeys.diary_consume.tr(),
                    )
                  ],
                );
              case QueryStatus.loading:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                      List.generate(3, (index) => const CalorieLoadingItem()),
                );
              case QueryStatus.error:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
