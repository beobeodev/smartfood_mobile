import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/widgets/bottom_sheet/sheet_container.widget.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/cubit/search_practice/search_practice_cubit.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/practice_list.widget.dart';

class AddPracticeBottomSheet extends StatelessWidget {
  const AddPracticeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SheetSearchContainer(
      title: LocaleKeys.diary_mode_workout.tr(),
      hintText: LocaleKeys.workout_find.tr(),
      child: BlocBuilder<SearchPracticeCubit, SearchPracticeState>(
        builder: (context, state) {
          return switch (state.info.status) {
            QueryStatus.loading => const LoadingDot(),
            QueryStatus.success => const PracticeList(),
            QueryStatus.error => CommonError(
                onRefresh: () => context.read<SearchPracticeCubit>().getAll(),
              )
          };
        },
        buildWhen: (previous, current) =>
            previous.info != current.info &&
            current.info.type == QueryType.initial,
      ),
    );
  }
}
