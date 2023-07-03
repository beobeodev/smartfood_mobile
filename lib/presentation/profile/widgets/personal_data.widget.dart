import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/constants.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/profile/ui_models/profile_option.model.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_divider.widget.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_list_view.widget.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

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
      title: 'Premium',
      icon: Assets.icons.profile.premium.svg(
        colorFilter: colorSvg(ColorStyles.zodiacBlue),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.read<AuthBloc>().state.user != null,
      child: Column(
        children: [
          const ProfileDivider(),
          ProfileListView(options: _options),
        ],
      ),
    );
  }
}
