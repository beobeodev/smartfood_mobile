import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 3, dashSpace = 5, startX = 0;
    final paint = Paint()
      ..color = ColorStyles.gray300
      ..strokeWidth = 3;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
