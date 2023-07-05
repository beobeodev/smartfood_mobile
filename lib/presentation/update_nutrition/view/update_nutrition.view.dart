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
import 'package:smarthealthy/presentation/update_nutrition/bloc/update_nutrition.bloc.dart';
import 'package:smarthealthy/presentation/update_nutrition/widgets/calorie_measure_body.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class UpdateNutritionPage extends StatelessWidget {
  const UpdateNutritionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UpdateNutritionBloc(
        userRepository: getIt.get<UserRepository>(),
      ),
      child: BlocListener<UpdateNutritionBloc, UpdateNutritionState>(
        listener: _listenBlocChanged,
        child: const _UpdateNutritionView(),
      ),
    );
  }

  void _listenBlocChanged(BuildContext context, UpdateNutritionState state) {
    state.maybeMap(
      loading: (_) => DialogUtil.showLoading(context),
      failure: (_) {
        DialogUtil.hideLoading(context);
        ToastUtil.showError(context);
      },
      success: (success) {
        context.read<AuthBloc>().add(AuthUserSet(success.newUser));

        DialogUtil.hideLoading(context);

        Navigator.of(context).pushNamedAndRemoveUntil(
          AppRouter.measureResult,
          ModalRoute.withName(AppRouter.root),
          arguments: success.nutrition,
        );
      },
      orElse: () => DialogUtil.hideLoading(context),
    );
  }
}

class _UpdateNutritionView extends StatelessWidget {
  const _UpdateNutritionView();

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
