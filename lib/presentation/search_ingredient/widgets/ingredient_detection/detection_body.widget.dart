import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/data/models/recognition.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/search_ingredient/widgets/ingredient_detection/detected_ingredient_list.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/widgets/ingredient_detection/ingredient_image_slider.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class DetectionBody extends StatefulWidget {
  final List<String> imagePaths;
  final Map<String, RecognitionWrapper> result;

  const DetectionBody({
    super.key,
    required this.imagePaths,
    required this.result,
  });

  @override
  State<DetectionBody> createState() => _DetectionBodyState();
}

class _DetectionBodyState extends State<DetectionBody> {
  final ValueNotifier<List<IngredientModel>> _ingredientNotifier =
      ValueNotifier([]);

  @override
  initState() {
    super.initState();
    _ingredientNotifier.value = widget.result.values
        .expand((element) => element.recognitions)
        .map((e) => e.ingredient)
        .toSet()
        .toList();
  }

  void _searchRecipes(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      AppRouter.searchRecipe,
      ModalRoute.withName(AppRouter.root),
      arguments: _ingredientNotifier.value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IngredientImageSlider(
          imagePaths: widget.imagePaths,
          recognitionResult: widget.result,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              AppSize.horizontalSpacing,
              AppSize.horizontalSpacing,
              AppSize.horizontalSpacing,
              context.bottomSpacing,
            ),
            child: Column(
              children: [
                DetectedIngredientList(
                  result: widget.result,
                  ingredientNotifier: _ingredientNotifier,
                ),
                AppRoundedButton(
                  onPressed: () => _searchRecipes(context),
                  content: LocaleKeys.search_recipe.tr(),
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
