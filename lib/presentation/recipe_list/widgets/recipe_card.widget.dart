import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/difficulty_time_level.widget.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      decoration: BoxDecoration(
        boxShadow: AppTheme.primaryShadow,
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSize.cardRadius),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppSize.cardRadius),
                bottomLeft: Radius.circular(AppSize.cardRadius),
              ),
              child: Image.network(
                'https://www.huongnghiepaau.com/wp-content/uploads/2019/01/banh-flan-bang-sua-tuoi.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bánh plan, Bánh plan, Bánh plan, Bánh plan, Bánh plan, Bánh plan',
                    style: TextStyles.mediumText.copyWith(fontSize: 15.5),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const DifficultyTimeLevel(),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
