import 'package:flutter/material.dart';

abstract class AppSize {
  static const double horizontalSpacing = 20;
  static const double cardRadius = 15;

  // App bar
  static const double appBarHeight = 60;
  static const double titleSpacing = 20;

  static const double choiceChipHeight = 48;

  // Detection page
  static const double horizontalSpacingInDetectionPage = 60;

  static const double ingredientListItemHeight = 55;

  // Width
  static const SizedBox w5 = SizedBox(
    width: 5,
  );
  static const SizedBox w10 = SizedBox(
    width: 10,
  );
  static const SizedBox w15 = SizedBox(
    width: 15,
  );
  static const SizedBox w20 = SizedBox(
    width: 20,
  );

  // Height
  static const SizedBox h5 = SizedBox(
    height: 5,
  );
  static const SizedBox h10 = SizedBox(
    height: 10,
  );
  static const SizedBox h15 = SizedBox(
    height: 15,
  );
  static const SizedBox h20 = SizedBox(
    height: 20,
  );
}
