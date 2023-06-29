import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/presentation/profile/ui_models/profile_option.model.dart';

class ProfileTile extends StatelessWidget {
  final ProfileOptionUIModel option;

  const ProfileTile({super.key, required this.option});

  Widget _getIcon() {
    if (option.icon is IconData) {
      return Icon(
        option.icon,
        color: ColorStyles.zodiacBlue,
      );
    }

    return option.icon;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36.w,
          height: 36.w,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F8FD),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(7),
          child: _getIcon(),
        ),
        AppSize.w10,
        Text(
          option.title,
          style: TextStyles.s14BoldText,
        ),
        const Spacer(),
        const Icon(Icons.chevron_right_rounded)
      ],
    );
  }
}
