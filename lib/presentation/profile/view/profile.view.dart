import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/app_safe_area.widget.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/profile/bloc/profile.bloc.dart';
import 'package:smarthealthy/presentation/profile/widgets/personal_data.widget.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_login_button.widget.dart';
import 'package:smarthealthy/presentation/profile/widgets/setting_and_handbook.widget.dart';
import 'package:smarthealthy/presentation/profile/widgets/sign_out.widget.dart';

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
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                final user = state.user;

                if (user == null) {
                  return const ProfileLoginButton();
                }

                return PersonalData(user: user);
              },
            ),
            const SettingAndHandbook(),
            const SignOut()
          ],
        ),
      ),
    );
  }
}
