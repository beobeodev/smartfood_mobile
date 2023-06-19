import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/title_add_button.widget.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/data/models/recognition.model.dart';
import 'package:smarthealthy/data/repositories/ingredient.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/bottom_sheet/add_ingredient_sheet.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/ingredient_chip.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/search_ingredient.dart';

class DetectedIngredientList extends StatelessWidget {
  const DetectedIngredientList({
    super.key,
    required this.result,
    required this.ingredientNotifier,
  });

  final Map<String, RecognitionWrapper> result;
  final ValueNotifier<List<IngredientModel>> ingredientNotifier;

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

    if (ingredient != null) {
      ingredientNotifier.value = [...ingredientNotifier.value, ingredient];
    }
  }

  void _onDeleteIngredient(int deletedIndex) {
    ingredientNotifier.value = ingredientNotifier.value
        .whereIndexed((index, element) => index != deletedIndex)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppSize.horizontalSpacing,
        ),
        child: BlocBuilder<IngredientDetectionBloc, IngredientDetectionState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAddButton(
                  title: LocaleKeys.texts_ingredient_list.tr(),
                  onAdd: () => _showBottomSheet(context),
                ),
                ValueListenableBuilder(
                  valueListenable: ingredientNotifier,
                  builder: (context, value, child) {
                    return Wrap(
                      spacing: 10,
                      children: value.mapIndexed(
                        (index, e) {
                          return IngredientChip(
                            name: e.name,
                            onDeleted: () => _onDeleteIngredient(index),
                          );
                        },
                      ).toList(),
                    );
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
