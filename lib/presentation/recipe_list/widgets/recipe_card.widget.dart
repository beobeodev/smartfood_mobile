import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/recipe_list/widgets/difficulty_time_level.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class RecipeCard extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(AppRouter.recipeDetail, arguments: recipe.id),
      child: Container(
        height: 220.h,
        decoration: BoxDecoration(
          boxShadow: AppTheme.primaryShadow,
          borderRadius: BorderRadius.circular(AppSize.cardRadius),
          image: const DecorationImage(
            image: NetworkImage(
              'https://i-giadinh.vnecdn.net/2021/10/26/saladrauqua-1635240739-5476-1635240778.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(AppSize.cardRadius),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.horizontalSpace,
            vertical: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                recipe.name,
                style: TextStyles.s17MediumText
                    .copyWith(overflow: TextOverflow.ellipsis),
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              DifficultyTimeCalories(
                level: recipe.level.name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
