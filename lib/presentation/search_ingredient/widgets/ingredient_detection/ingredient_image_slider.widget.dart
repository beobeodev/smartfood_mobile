import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/models/recognition.model.dart';
import 'package:smarthealthy/presentation/search_ingredient/widgets/ingredient_detection/ingredient_image_item.widget.dart';

class IngredientImageSlider extends StatelessWidget {
  const IngredientImageSlider({
    super.key,
    required this.imagePaths,
    required this.recognitionResult,
  });

  final List<String> imagePaths;
  final Map<String, RecognitionWrapper> recognitionResult;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth =
            constraints.maxWidth - 2 * AppSize.horizontalSpacingInDetectionPage;

        final highestItemSize = recognitionResult.values
            .map(
              (e) => Size(
                itemWidth,
                (itemWidth * e.imageSize.height) / e.imageSize.width,
              ),
            )
            .reduce(
              (value, element) =>
                  value.height > element.height ? value : element,
            );

        return SizedBox(
          width: context.width,
          height: highestItemSize.height,
          child: PageView.builder(
            itemBuilder: (context, index) {
              final RecognitionWrapper wrapperItem =
                  recognitionResult[imagePaths[index]]!;

              return IngredientImageItem(
                wrapper: wrapperItem,
                imagePath: imagePaths[index],
              );
            },
            itemCount: imagePaths.length,
          ),
        );
      },
    );
  }
}
