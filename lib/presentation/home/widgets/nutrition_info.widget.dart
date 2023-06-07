import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/presentation/home/widgets/calo_type_progress.widget.dart';

class NutritionInfo extends StatelessWidget {
  const NutritionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: ColorStyles.caloriesBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(15),
          child: LayoutBuilder(
            builder: (context, constrains) {
              return Row(
                children: [
                  CircularPercentIndicator(
                    radius: constrains.maxHeight / 2,
                    lineWidth: 10,
                    animation: true,
                    percent: 0.7,
                    animationDuration: 2000,
                    center: Container(
                      width: double.infinity,
                      height: double.infinity,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorStyles.tint100.withOpacity(0.1),
                        border: Border.all(
                          color: ColorStyles.tint100.withOpacity(0.2),
                          width: 10,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '1500',
                              style: TextStyles.mediumText
                                  .copyWith(color: Colors.white, fontSize: 16),
                            ),
                            TextSpan(
                              text: '\n/2500 kcal',
                              style: TextStyles.mediumText
                                  .copyWith(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.white,
                    backgroundColor: ColorStyles.tint100.withOpacity(0.2),
                  ),
                  AppSize.w20,
                  const CalorieTypeProgress()
                ],
              );
            },
          ),
        ),
        AppSize.h15,
        // LayoutBuilder(
        //   builder: (context, constraints) {
        //     final double itemWidth = (constraints.maxWidth - 2 * 15) / 3;

        //     return Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         LiquidCustomProgressIndicator(
        //           direction: Axis.vertical,
        //           shapePath: Path()
        //             ..addRRect(
        //               RRect.fromRectAndRadius(
        //                 Rect.fromLTWH(0, 0, itemWidth, 120),
        //                 const Radius.circular(20),
        //               ),
        //             ),
        //           backgroundColor: ColorStyles.gray100,
        //           // valueColor: const AlwaysStoppedAnimation<Color>(
        //           //   ColorStyles.caloriesBackground,
        //           // ),
        //           center: const Text(
        //             '1500/2000\nml',
        //             style: TextStyles.s14MediumText,
        //             textAlign: TextAlign.center,
        //           ),
        //         ),
        //         Container(
        //           width: itemWidth,
        //           height: 120,
        //           decoration: BoxDecoration(
        //             color: Colors.red,
        //             borderRadius: BorderRadius.circular(15),
        //           ),
        //         ),
        //         Container(
        //           width: itemWidth,
        //           height: 120,
        //           decoration: BoxDecoration(
        //             color: Colors.red,
        //             borderRadius: BorderRadius.circular(15),
        //           ),
        //         )
        //       ],
        //     );
        //   },
        // )
      ],
    );
  }
}
