import 'package:flutter/material.dart';

ColorFilter colorSvg(Color color) => ColorFilter.mode(
      color,
      BlendMode.srcIn,
    );
