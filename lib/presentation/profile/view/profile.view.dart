import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/common/widgets/app_safe_area.widget.dart';
import 'package:smarthealthy/presentation/profile/bloc/profile.bloc.dart';
import 'package:smarthealthy/router/app_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileBloc(),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSafeArea(
        child: Column(
          children: [
            AppRoundedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouter.calorieMeasure);
              },
              content: 'Logout',
            )
          ],
        ),
      ),
    );
  }
}
