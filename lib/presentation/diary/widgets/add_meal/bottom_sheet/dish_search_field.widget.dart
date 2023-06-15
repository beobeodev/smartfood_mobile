import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';
import 'package:unicons/unicons.dart';

class DishSearchField extends StatelessWidget {
  const DishSearchField({
    super.key,
  });

  void _onSubmitField(BuildContext context, String value) {
    log(value);

    context
        .read<SearchRecipeBloc>()
        .add(SearchRecipeEvent.getAll(searchKey: value));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSize.horizontalSpace,
        AppSize.horizontalSpace,
        AppSize.horizontalSpace,
        10,
      ),
      child: AppTextFormField(
        borderRadius: 10,
        fillColor: Colors.white,
        borderColor: ColorStyles.gray200,
        prefixIcon: UniconsLine.search,
        prefixIconColor: ColorStyles.yellowGreen,
        hintText: LocaleKeys.meal_enter_dish.tr(),
        onFieldSubmitted: (value) => _onSubmitField(context, value),
      ),
    );
  }
}
