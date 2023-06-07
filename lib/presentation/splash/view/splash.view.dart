import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/splash/bloc/splash.bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(
        authBloc: context.read<AuthBloc>(),
      ),
      lazy: false,
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Assets.icons.launcher.appIconPng.image(),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: context.bottomSpacing),
              child: Text(
                'Powered by GDSC-DUT',
                style: TextStyles.s17MediumText,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
