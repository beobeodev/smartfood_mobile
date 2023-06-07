import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/filled_rounded_button.widget.dart';
import 'package:unicons/unicons.dart';

class RecipeDetailAppBar extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeDetailAppBar({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilledRoundedButton(
            icon: Icons.chevron_left_rounded,
            onTap: () => Navigator.of(context).pop(),
          ),
          FilledRoundedButton(
            icon: Icons.favorite,
            onTap: () => Navigator.of(context).pop(),
          )
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  recipe.name,
                  style: TextStyles.boldText.copyWith(
                    fontSize: 20.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
              AppSize.w10,
              Row(
                children: List.generate(
                  3,
                  (index) => const Icon(
                    UniconsSolid.star,
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      pinned: true,
      expandedHeight: 0.25 * context.height,
      elevation: 0,
      backgroundColor: ColorStyles.yellowGreen,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: recipe.id,
          child: Image.network(
            'https://i-giadinh.vnecdn.net/2021/10/26/saladrauqua-1635240739-5476-1635240778.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
