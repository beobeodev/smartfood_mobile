import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/recipe_detail/recipe_detail.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:unicons/unicons.dart';

class StartCookingButton extends StatelessWidget {
  const StartCookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailBloc, RecipeDetailState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            return Positioned(
              bottom: context.paddingBottom > 0
                  ? context.paddingBottom
                  : AppSize.horizontalSpacing,
              width: context.width / 2,
              child: AppRoundedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRouter.recipeStep,
                    arguments: success.recipe.recipeStep,
                  );
                },
                content: LocaleKeys.button_start_cooking.tr(),
                suffixIcon: Icon(
                  UniconsLine.play_circle,
                  color: Colors.white,
                  size: 27.sp,
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
