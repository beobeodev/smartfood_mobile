import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class EmptyText extends StatelessWidget {
  const EmptyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.horizontalSpacing,
      ),
      child: Text(
        LocaleKeys.texts_no_data_yet.tr(),
        style: TextStyles.s14MediumText,
      ),
    );
  }
}
