import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/data/repositories/user.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/diary/bloc/calorie_measure/calorie_measure.bloc.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/calorie_measure_body.widget.dart';

class CalorieMeasurePage extends StatelessWidget {
  const CalorieMeasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalorieMeasureBloc(
        userRepository: getIt.get<UserRepository>(),
      ),
      child: BlocListener<CalorieMeasureBloc, CalorieMeasureState>(
        listener: _listenBlocChanged,
        child: const _CalorieMeasureView(),
      ),
    );
  }

  void _listenBlocChanged(BuildContext context, CalorieMeasureState state) {
    state.maybeMap(
      loading: (_) => DialogUtil.showLoading(context),
      failure: (_) {
        DialogUtil.hideLoading(context);
        ToastUtil.showError(context);
      },
      success: (success) {
        context.read<AuthBloc>().add(AuthUserSet(success.newUser));

        // Navigator.of(context).pushNamedAndRemoveUntil(
        //   AppRouter.measureResult,
        //   ModalRoute.withName(AppRouter.root),
        // );
      },
      orElse: () => DialogUtil.hideLoading(context),
    );
  }
}

class _CalorieMeasureView extends StatelessWidget {
  const _CalorieMeasureView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        elevation: 0,
        title: LocaleKeys.diary_update_nutrition.tr(),
      ),
      body: const CalorieMeasureBody(),
    );
  }
}
