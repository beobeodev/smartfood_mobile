import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_safe_area.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/profile/bloc/profile.bloc.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_tile.widget.dart';
import 'package:unicons/unicons.dart';

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
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.network(
                'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2022/12/21/avatar-2.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            AppSize.h10,
            Text(
              context.read<AuthBloc>().state.user!.fullName,
              style: TextStyles.mediumText.copyWith(fontSize: 20.sp),
            ),
            const SizedBox(
              height: 40,
            ),
            ProfileTile(
              icon: Assets.icons.profile.premium.svg(
                width: 28,
                color: ColorStyles.zodiacBlue,
              ),
              title: 'Premium',
              color: ColorStyles.zodiacBlue,
              isCenter: false,
            ),
            const Divider(
              color: ColorStyles.gray100,
              thickness: 1,
              height: 15,
            ),
            ProfileTile(
              icon: UniconsLine.setting,
              title: LocaleKeys.profile_settings.tr(),
              color: ColorStyles.zodiacBlue,
              isCenter: false,
            ),
            const Divider(
              color: ColorStyles.gray100,
              thickness: 1,
              height: 15,
            ),
            ProfileTile(
              icon: UniconsLine.sign_out_alt,
              title: LocaleKeys.auth_logout.tr(),
              color: ColorStyles.red400,
              onTap: () => context.read<AuthBloc>().add(AuthLogout()),
            ),
          ],
        ),
      ),
    );
  }
}
