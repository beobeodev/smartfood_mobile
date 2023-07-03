import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
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
            context.read<AuthBloc>().state.user == null
                ? const ProfileLoginButton()
                : Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2022/12/21/avatar-2.jpg',
                          width: AppSize.profileImageSize.w,
                          height: AppSize.profileImageSize.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      AppSize.w10,
                      Text(
                        context.read<AuthBloc>().state.user!.fullName,
                        style: TextStyles.s17MediumText,
                      ),
                    ],
                  ),
            const PersonalData(),
            const SettingAndHandbook(),
            const SignOut()
          ],
        ),
      ),
    );
  }
}
