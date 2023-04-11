import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/app_text_form_field.widget.dart';
import 'package:smartfood/generated/locale_keys.g.dart';
import 'package:unicons/unicons.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  offset: const Offset(0, 2),
                  color: Colors.black.withOpacity(0.1),
                )
              ],
              borderRadius: BorderRadius.circular(100),
            ),
            child: AppTextFormField(
              prefixIcon: UniconsLine.search,
              borderColor: Colors.transparent,
              borderRadius: 100,
              hintText: LocaleKeys.ingredient_find.tr(),
              extendField: false,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          UniconsLine.focus_target,
          color: ColorStyles.primary,
          size: 30,
        ),
      ],
    );
  }
}
