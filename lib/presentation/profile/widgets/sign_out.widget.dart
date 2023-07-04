import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_divider.widget.dart';
import 'package:unicons/unicons.dart';

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  void _logout(BuildContext context) {
    DialogUtil.showCustomDialog(
      context,
      title: LocaleKeys.profile_logout_confirm.tr(),
      content:
          'Khi đăng xuất, các dữ liệu cá nhân của bạn sẽ tạm thời ẩn đi. Để thấy lại các thông tin đó, bạn chỉ cần đăng nhập lại',
      isConfirmDialog: true,
      confirmAction: () => context.read<AuthBloc>().add(AuthLogout()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Visibility(
          visible: state.user != null,
          child: Column(
            children: [
              const ProfileDivider(),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => _logout(context),
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
      },
    );
  }
}
