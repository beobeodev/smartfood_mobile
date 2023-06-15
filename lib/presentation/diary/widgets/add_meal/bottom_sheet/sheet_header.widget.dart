import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          alignment: Alignment.center,
          child: Text(
            LocaleKeys.meal_add_dish.tr(),
            style: TextStyles.s17MediumText,
          ),
        ),
        const Divider(
          height: 0,
        ),
      ],
    );
  }
}
