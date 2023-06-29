import 'package:flutter/material.dart';
import 'package:smarthealthy/common/constants/constants.dart';
import 'package:smarthealthy/common/enums/recipe_level.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/icon_tile.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:unicons/unicons.dart';

class DifficultyTimeCalories extends StatelessWidget {
  final RecipeLevel level;

  const DifficultyTimeCalories({
    super.key,
    required this.level,
  });

  Widget _getDifficultyIcon() {
    const colorFilter = ColorFilter.mode(
      ColorStyles.yellowGreen,
      BlendMode.srcIn,
    );

    switch (level) {
      case RecipeLevel.hard:
        return Assets.icons.difficultyLevel.hard.svg(
          width: 14,
          colorFilter: colorFilter,
        );
      case RecipeLevel.medium:
        return Assets.icons.difficultyLevel.medium.svg(
          width: 14,
          colorFilter: colorFilter,
        );
      case RecipeLevel.easy:
      default:
        return Assets.icons.difficultyLevel.easy.svg(
          width: 14,
          colorFilter: colorFilter,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconTile(
            icon: _getDifficultyIcon(),
            title: level.value,
          ),
        ),
        const Expanded(
          child: IconTile(
            icon: UniconsLine.clock,
            title: '10 phút',
          ),
        ),
        Expanded(
          child: IconTile(
            icon: Assets.icons.calo.svg(
              width: 14,
              colorFilter: colorSvg(
                ColorStyles.yellowGreen,
              ),
            ),
            title: '100 kcal',
          ),
        )
      ],
    );
  }
}
