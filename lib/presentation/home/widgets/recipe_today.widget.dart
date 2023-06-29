import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_carousel_slider.widget.dart';
import 'package:smarthealthy/common/widgets/common_shimmer_item.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/home/home.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_card.widget.dart';

class RecipeToday extends StatelessWidget {
  const RecipeToday({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return switch (state.status) {
          QueryStatus.loading => const RecipeTodayLoading(),
          QueryStatus.success => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: AppSize.horizontalSpacing),
                  child: Text(
                    LocaleKeys.home_cook_today.tr(),
                    style: TextStyles.mediumText.copyWith(fontSize: 20.sp),
                  ),
                ),
                AppSize.h10,
                AppCarouselSlider(
                  items: state.recommendedRecipes!.map(
                    (item) {
                      return RecipeCard(recipe: item);
                    },
                  ).toList(),
                )
              ],
            ),
          QueryStatus.error => const SizedBox.shrink(),
        };
      },
    );
  }
}

class RecipeTodayLoading extends StatelessWidget {
  const RecipeTodayLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: AppSize.horizontalSpacing),
          child: CommonShimmerItem(
            width: 200,
            height: 20,
          ),
        ),
        AppSize.h10,
        AppCarouselSlider(
          showIndicator: false,
          items: List.generate(
            10,
            (index) => const CommonShimmerItem(
              borderRadius: AppSize.cardRadius,
            ),
          ),
        )
      ],
    );
  }
}
