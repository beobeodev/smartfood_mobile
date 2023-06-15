import 'package:flutter/material.dart';

import 'dart:ui';

class DashPainter extends CustomPainter {
  final List<double> dashPattern;
  final double borderRadius;
  final Color borderColor;

  DashPainter({
    required this.dashPattern,
    required this.borderRadius,
    required this.borderColor,
  });

  Path dashPath(Path initialPath) {
    final Path dest = Path();
    for (final PathMetric metric in initialPath.computeMetrics()) {
      double distance = 0;
      while (distance < metric.length) {
        final double len = dashPattern[0];
        dest.addPath(metric.extractPath(distance, distance + len), Offset.zero);
        distance += len + dashPattern[1];
      }
    }
    return dest;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 2
      ..color = borderColor
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    Path path = _getRRectPath(size, Radius.circular(borderRadius));
    Path finalPath = dashPath(path);
    canvas.drawPath(finalPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  Path _getRRectPath(Size size, Radius radius) {
    return Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            0,
            0,
            size.width,
            size.height,
          ),
          radius,
        ),
      );
  }
}
