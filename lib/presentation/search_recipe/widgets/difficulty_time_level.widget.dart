import 'package:flutter/material.dart';
import 'package:smarthealthy/common/constants/constants.dart';
import 'package:smarthealthy/common/enums/recipe_level.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/icon_tile.widget.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:unicons/unicons.dart';

class DifficultyCategoryCuisine extends StatelessWidget {
  final RecipeLevel level;
  final String category;
  final String cuisine;

  const DifficultyCategoryCuisine({
    super.key,
    required this.level,
    required this.category,
    required this.cuisine,
  });

  Widget _getDifficultyIcon() {
    final colorFilter = colorSvg(ColorStyles.yellowGreen);

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
          flex: 2,
          child: IconTile(
            icon: _getDifficultyIcon(),
            title: level.value,
          ),
        ),
        Expanded(
          flex: 5,
          child: IconTile(
            icon: Icons.category,
            title: category,
          ),
        ),
        Expanded(
          flex: 3,
          child: IconTile(
            icon: UniconsLine.map_marker_info,
            title: cuisine,
          ),
        )
      ],
    );
  }
}
