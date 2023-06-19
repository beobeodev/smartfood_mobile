import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/recognition.model.dart';

class IngredientImageItem extends StatelessWidget {
  const IngredientImageItem({
    super.key,
    required this.wrapper,
    required this.imagePath,
  });

  final RecognitionWrapper wrapper;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.horizontalSpacingInDetectionPage,
      ),
      child: LayoutBuilder(
        builder: (context, childConstraints) {
          final Size itemSize = Size(
            childConstraints.maxWidth,
            (childConstraints.maxWidth * wrapper.imageSize.height) /
                wrapper.imageSize.width,
          );

          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.file(
                  File(imagePath),
                  width: itemSize.width,
                  height: itemSize.height,
                  fit: BoxFit.cover,
                ),
              ),
              Stack(
                children: wrapper.recognitions.map((e) {
                  final name = e.ingredient.name;

                  final Color color = Colors.primaries[
                      (name.length + name.codeUnitAt(0)) %
                          Colors.primaries.length];

                  final Rect renderLocation = e.getRenderLocation(itemSize);

                  return Positioned(
                    left: renderLocation.left,
                    top: renderLocation.top,
                    width: renderLocation.width,
                    height: renderLocation.height,
                    child: Container(
                      width: renderLocation.width,
                      height: renderLocation.height,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: color,
                          width: 3,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          child: Container(
                            color: color,
                            child: Text(name),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )
            ],
          );
        },
      ),
    );
  }
}
