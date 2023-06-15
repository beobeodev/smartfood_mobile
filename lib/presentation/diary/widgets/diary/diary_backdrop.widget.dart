import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class DiaryBackdrop extends StatelessWidget {
  const DiaryBackdrop({
    super.key,
    required ValueNotifier<bool> animatingNotifier,
  }) : _isAnimating = animatingNotifier;

  final ValueNotifier<bool> _isAnimating;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isAnimating,
      builder: (context, value, child) {
        return Visibility(visible: value, child: child!);
      },
      child: Positioned.fill(
        child: GestureDetector(
          onTap: () {
            _isAnimating.value = false;
          },
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.05),
            ),
          ),
        ),
      ),
    );
  }
}
