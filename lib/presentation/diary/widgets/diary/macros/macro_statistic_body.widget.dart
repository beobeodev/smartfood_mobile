import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/macros/macros_loading_success.widget.dart';

class MacroStatisticBody extends StatelessWidget {
  const MacroStatisticBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemSize = (constraints.maxWidth - 2 * 30) / 3;

        return BlocBuilder<DiaryBloc, DiaryState>(
          builder: (context, state) {
            switch (state.status) {
              case QueryStatus.loading:
                return MacrosLoadingSuccess(
                  itemSize: itemSize,
                );
              case QueryStatus.success:
                final nutrition = state.currentDiary.nutrition ??
                    context.read<AuthBloc>().state.user!.nutrition;

                return MacrosLoadingSuccess(
                  nutrition: nutrition,
                  key: const ValueKey('1'),
                  itemSize: itemSize,
                );
              case QueryStatus.error:
                return const SizedBox.shrink();
            }
          },
        );
      },
    );
  }
}
