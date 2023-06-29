import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/profile/ui_models/profile_option.model.dart';
import 'package:smarthealthy/presentation/profile/widgets/profile_tile.widget.dart';

class ProfileListView extends StatelessWidget {
  final List<ProfileOptionUIModel> options;

  const ProfileListView({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (_, __) {
        return AppSize.h10;
      },
      itemBuilder: (context, index) {
        return ProfileTile(option: options[index]);
      },
      itemCount: options.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
