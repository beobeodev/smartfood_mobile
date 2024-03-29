import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';
import 'package:smarthealthy/presentation/ingredient_list/widgets/ingredient_list_item.widget.dart';

class CurrentIngredientList extends StatelessWidget {
  const CurrentIngredientList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IngredientListBloc, IngredientListState>(
      builder: (context, state) {
        if (state.ingredients.isEmpty) {
          return Center(
            child: Text(
              LocaleKeys.texts_no_data_yet.tr(),
              style: TextStyles.s17MediumText.copyWith(color: Colors.red),
            ),
          );
        }

        return ListView.separated(
          itemCount: state.ingredients.length,
          padding: const EdgeInsets.fromLTRB(
            AppSize.horizontalSpacing,
            AppSize.horizontalSpacing,
            AppSize.horizontalSpacing,
            100,
          ),
          separatorBuilder: (context, index) {
            return AppSize.h10;
          },
          itemBuilder: (context, index) {
            final ingredient = state.ingredients[index];

            return IngredientListItem(ingredient: ingredient);
          },
        );
      },
    );
  }
}
