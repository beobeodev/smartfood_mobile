import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/profile/ui_models/profile_option.model.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_list_view.widget.dart';
import 'package:unicons/unicons.dart';

class SettingAndHandbook extends StatefulWidget {
  const SettingAndHandbook({super.key});

  @override
  State<SettingAndHandbook> createState() => _SettingAndHandbookState();
}

class _SettingAndHandbookState extends State<SettingAndHandbook> {
  final List<ProfileOptionUIModel> _options = [
    ProfileOptionUIModel(
      title: LocaleKeys.profile_settings.tr(),
      icon: UniconsLine.setting,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ProfileListView(options: _options);
  }
}
