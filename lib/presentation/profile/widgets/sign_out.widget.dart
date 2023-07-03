import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_divider.widget.dart';
import 'package:unicons/unicons.dart';

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.read<AuthBloc>().state.user != null,
      child: Column(
        children: [
          const ProfileDivider(),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.read<AuthBloc>().add(AuthLogout()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  UniconsLine.sign_out_alt,
                  color: ColorStyles.red400,
                ),
                AppSize.w10,
                Text(
                  LocaleKeys.auth_logout.tr(),
                  style: TextStyles.s14BoldText
                      .copyWith(color: ColorStyles.red400),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
