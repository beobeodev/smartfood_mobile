
import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/configs/app_routes.dart';
import 'package:unicons/unicons.dart';
import 'package:badges/badges.dart' as badges;

class IngredientFAB extends StatelessWidget {
  const IngredientFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed(AppRoutes.recipeDetail);
      },
      backgroundColor: ColorStyles.primary,
      child: badges.Badge(
        position: badges.BadgePosition.topEnd(),
        badgeContent: const Text('0', style: TextStyle(color: Colors.white)),
        child: const Icon(
          UniconsLine.list_ul,
        ),
      ),
    );
  }
}
