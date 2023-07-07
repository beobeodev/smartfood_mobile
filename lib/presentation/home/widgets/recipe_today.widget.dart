import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_carousel_slider.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_card.widget.dart';

class RecipeToday extends StatelessWidget {
  final List<RecipeModel> recipes;

  const RecipeToday({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppSize.horizontalSpacing),
          child: Text(
            LocaleKeys.home_new_recipes.tr(),
            style: TextStyles.mediumText.copyWith(fontSize: 20.sp),
          ),
        ),
        AppSize.h10,
        AppCarouselSlider(
          items: recipes.map(
            (item) {
              return RecipeCard(recipe: item);
            },
          ).toList(),
        )
      ],
    );
  }
}
