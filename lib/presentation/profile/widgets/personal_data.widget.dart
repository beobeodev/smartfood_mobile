import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/constants/constants.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/profile/ui_models/profile_option.model.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_divider.widget.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_list_view.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class PersonalData extends StatefulWidget {
  final UserModel user;

  const PersonalData({super.key, required this.user});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  final List<ProfileOptionUIModel> _options = [
    ProfileOptionUIModel(
      title: LocaleKeys.profile_personal_data.tr(),
      icon: Icons.person,
    ),
    ProfileOptionUIModel(
      title: LocaleKeys.diary_nutri_info.tr(),
      icon: Assets.icons.calo.svg(
        colorFilter: colorSvg(ColorStyles.zodiacBlue),
      ),
      route: AppRouter.calorieMeasure,
    ),
    ProfileOptionUIModel(
      title: 'Premium',
      icon: Assets.icons.profile.premium.svg(
        colorFilter: colorSvg(ColorStyles.zodiacBlue),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
              widget.user.fullName,
              style: TextStyles.s17MediumText,
            ),
          ],
        ),
        const ProfileDivider(),
        ProfileListView(options: _options),
      ],
    );
  }
}
