import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/helpers/ingredient_detector.dart';
import 'package:smartfood/common/widgets/app_safe_area.widget.dart';
import 'package:smartfood/common/widgets/loading_dot.widget.dart';
import 'package:smartfood/di/di.dart';
import 'package:smartfood/modules/recipe/bloc/ingredient_detection/ingredient_detection.bloc.dart';

class IngredientDetectionPage extends StatelessWidget {
  final List<String> imagePaths;

  const IngredientDetectionPage({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => IngredientDetectionBloc(
        ingredientDetector: getIt.get<IngredientDetector>(),
      )..add(IngredientDetectionEvent.started(imagePaths)),
      child: _IngredientDetectionView(imagePaths),
    );
  }
}

class _IngredientDetectionView extends StatelessWidget {
  final List<String> imagePaths;

  const _IngredientDetectionView(this.imagePaths);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<IngredientDetectionBloc, IngredientDetectionState>(
        builder: (context, state) {
          return AppSafeArea(
            child: state.map(
              initial: (_) => const SizedBox(),
              loading: (_) => const LoadingDot(),
              success: (successState) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Expanded(
                      child: PageView.builder(
                        itemBuilder: (context, index) {
                          final Size originalImageSize = successState
                              .recognitionResult[imagePaths[index]]![0]
                              .imageSize;

                          return LayoutBuilder(
                            builder: (context, constrains) {
                              final Size itemSize = Size(
                                constrains.maxWidth,
                                (constrains.maxWidth *
                                        originalImageSize.height) /
                                    originalImageSize.width,
                              );

                              return Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.file(
                                      File(imagePaths[index]),
                                      width: itemSize.width,
                                      height: itemSize.height,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Stack(
                                    children: successState
                                        .recognitionResult[imagePaths[index]]!
                                        .map((e) {
                                      final Color color = Colors.primaries[
                                          (e.label.length +
                                                  e.label.codeUnitAt(0)) %
                                              Colors.primaries.length];

                                      final Rect renderLocation =
                                          e.getRenderLocation(itemSize);

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
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(2),
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: FittedBox(
                                              child: Container(
                                                color: color,
                                                child: Text(e.label),
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
                          );
                        },
                        itemCount: imagePaths.length,
                      ),
                    )
                  ],
                );
              },
            ),
          );
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}

// Stack(
//                               children: [
//                                 Image.file(
//                                   File(imagePaths[index]),
//                                   width: context.width - 100,
//                                   height: ((context.width - 100) *
//                                           successState
//                                               .recognitionResult[
//                                                   imagePaths[index]]![0]
//                                               .imageSize
//                                               .height) /
//                                       successState
//                                           .recognitionResult[imagePaths[index]]![
//                                               0]
//                                           .imageSize
//                                           .width,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 LayoutBuilder(
//                                   builder: (_, constraints) {
//                                     return Stack(
//                                       children: successState
//                                           .recognitionResult[imagePaths[index]]!
//                                           .map((e) {
//                                         final Color color = Colors.primaries[
//                                             (e.label.length +
//                                                     e.label.codeUnitAt(0)) %
//                                                 Colors.primaries.length];
              
//                                         final Size widgetSize = Size(
//                                           constraints.maxWidth,
//                                           constraints.maxHeight,
//                                         );
              
//                                         final Rect renderLocation =
//                                             e.getRenderLocation(widgetSize);
              
//                                         return Positioned(
//                                           left: renderLocation.left,
//                                           top: renderLocation.top,
//                                           width: renderLocation.width,
//                                           height: renderLocation.height,
//                                           child: Container(
//                                             width: renderLocation.width,
//                                             height: renderLocation.height,
//                                             decoration: BoxDecoration(
//                                               border: Border.all(
//                                                 color: color,
//                                                 width: 3,
//                                               ),
//                                               borderRadius:
//                                                   const BorderRadius.all(
//                                                 Radius.circular(2),
//                                               ),
//                                             ),
//                                             child: Align(
//                                               alignment: Alignment.topLeft,
//                                               child: FittedBox(
//                                                 child: Container(
//                                                   color: color,
//                                                   child: Text(e.label),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         );
//                                       }).toList(),
//                                     );
//                                   },
//                                 )
//                               ],
//                             )