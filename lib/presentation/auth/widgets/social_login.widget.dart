import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSize.h20,
        Row(
          children: [
            const Expanded(
              child: Divider(
                color: ColorStyles.gray300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                LocaleKeys.auth_sign_in_with.tr(),
                style: TextStyles.s14RegularText
                    .copyWith(color: ColorStyles.gray500),
              ),
            ),
            const Expanded(
              child: Divider(
                color: ColorStyles.gray300,
              ),
            )
          ],
        ),
        AppSize.h20,
        LayoutBuilder(
          builder: (context, constrains) {
            final itemWith = (constrains.maxWidth - 40) / 2;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppRoundedButton(
                  onPressed: () {},
                  width: itemWith,
                  prefixIcon: Assets.icons.auth.google.svg(
                    width: 18.w,
                  ),
                  content: 'Google',
                  backgroundColor: Colors.white,
                  textStyle: TextStyles.s14MediumText
                      .copyWith(color: ColorStyles.gray500),
                  borderSide: const BorderSide(
                    color: ColorStyles.gray200,
                  ),
                ),
                AppRoundedButton(
                  onPressed: () {},
                  width: itemWith,
                  prefixIcon: Icon(
                    Icons.apple_rounded,
                    color: Colors.white,
                    size: 22.w,
                  ),
                  content: 'Apple',
                  backgroundColor: Colors.black,
                  textStyle:
                      TextStyles.s14MediumText.copyWith(color: Colors.white),
                )
              ],
            );
          },
        )
      ],
    );
  }
}
