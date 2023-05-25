import 'dart:math';

import 'package:flutter/cupertino.dart';

/// Represents the recognition output from the model
class Recognition implements Comparable<Recognition> {
  // Grid-cell index
  final int id;

  /// Label of the result
  final String label;

  /// Confidence [0.0, 1.0]
  final double score;

  /// Location of bounding box rect
  ///
  /// The rectangle corresponds to the raw input image
  /// passed for inference
  final Rect location;

  // Size of the image that was passed for inference
  final Size imageSize;

  Recognition({
    required this.id,
    required this.label,
    required this.score,
    required this.location,
    required this.imageSize,
  });

  /// Returns bounding box rectangle corresponding to the
  /// displayed image on screen
  ///
  /// This is the actual location where rectangle is rendered on
  /// the screen
  Rect getRenderLocation(Size widgetSize) {
    final double ratioX = widgetSize.width / imageSize.width;
    final double ratioY = ratioX;

    final double translateLeft = max(0.1, location.left * ratioX),
        translateTop = max(0.1, location.top * ratioY),
        translateWidth = min(
          location.width * ratioX,
          widgetSize.width,
        ),
        translateHeight = min(
          location.height * ratioY,
          widgetSize.height,
        );

    Rect transformedRect = Rect.fromLTWH(
      translateLeft,
      translateTop,
      translateWidth,
      translateHeight,
    );

    return transformedRect;
  }

  @override
  String toString() {
    return 'Recognition(id: $id, label: $label, score: ${(score * 100).toStringAsPrecision(3)}, location: $location)';
  }

  @override
  int compareTo(Recognition other) {
    if (score == other.score) {
      return 0;
    } else if (score > other.score) {
      return -1;
    } else {
      return 1;
    }
  }
}
