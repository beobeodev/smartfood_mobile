import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/dtos/submit_recipe_rating.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/auth/bloc/auth/auth.bloc.dart';
import 'package:smarthealthy/presentation/recipe_detail/bloc/rating/recipe_rating.bloc.dart';
import 'package:unicons/unicons.dart';

class RatingBar extends StatelessWidget {
  final RecipeModel recipe;

  const RatingBar({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Visibility(
          visible: state.user != null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.recipe_detail_reviews.tr(),
                style: TextStyles.boldText.copyWith(fontSize: 18.sp),
              ),
              BlocBuilder<RecipeRatingBloc, RecipeRatingState>(
                builder: (context, state) {
                  return SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index) {
                        final realIndex = index + 1;

                        return GestureDetector(
                          onTap: () {
                            if (state.rating != realIndex) {
                              context.read<RecipeRatingBloc>().add(
                                    RecipeRatingEvent.submit(
                                      SubmitRecipeRatingDTO(
                                        id: recipe.id,
                                        value: realIndex,
                                      ),
                                    ),
                                  );
                            }
                          },
                          child: Icon(
                            index < state.rating
                                ? UniconsSolid.star
                                : UniconsLine.star,
                            size: 40.sp,
                            color: Colors.yellow[600],
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
