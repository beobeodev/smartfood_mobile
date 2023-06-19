import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/title_add_button.widget.dart';
import 'package:smarthealthy/data/repositories/ingredient.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/bottom_sheet/add_ingredient_sheet.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/ingredient_chip.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/search_ingredient.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';

class IngredientFilterSection extends StatelessWidget {
  const IngredientFilterSection({super.key});

  Future<void> _showBottomSheet(BuildContext context) async {
    final ingredient = await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return BlocProvider(
          create: (_) => SearchIngredientBloc(
            ingredientRepository: getIt.get<IngredientRepository>(),
          ),
          child: const AddIngredientSheet(),
        );
      },
    );

    if (context.mounted) {
      if (ingredient != null) {
        context
            .read<SearchRecipeBloc>()
            .add(SearchRecipeEvent.addIngredient(ingredient));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleAddButton(
          title: LocaleKeys.filter_ingredient.tr(),
          titleStyle: TextStyles.s17BoldText,
          onAdd: () => _showBottomSheet(context),
        ),
        BlocBuilder<SearchRecipeBloc, SearchRecipeState>(
          buildWhen: (previous, current) =>
              previous.queryDto.ingredients != current.queryDto.ingredients,
          builder: (context, state) {
            return Wrap(
              spacing: 5,
              children: state.queryDto.ingredients?.map((e) {
                    return IngredientChip(
                      name: e.name,
                      onDeleted: () {},
                    );
                  }).toList() ??
                  [],
            );
          },
        ),
      ],
    );
  }
}
