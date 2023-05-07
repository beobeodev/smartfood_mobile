import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/theme/text_styles.dart';
import 'package:smartfood/modules/recipe/widgets/recipe_step/dashed_line_painter.widget.dart';

class NumberStepper extends StatelessWidget {
  final int itemCount;
  final PageController pageController;
  final ValueNotifier<int> pageNotifier;

  const NumberStepper({
    super.key,
    required this.itemCount,
    required this.pageController,
    required this.pageNotifier,
  });

  Color _getSelectedColor(int index) {
    if (pageNotifier.value == index) {
      return ColorStyles.green600;
    }

    return ColorStyles.gray300;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Positioned(
          left: 0,
          child: SizedBox(
            width: 200,
            child: CustomPaint(
              painter: DashedLinePainter(),
            ),
          ),
        ),
        SizedBox(
          height: 30,
          child: LayoutBuilder(
            builder: (_, constraints) {
              return ListView.separated(
                itemCount: itemCount,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: (constraints.maxWidth -
                            itemCount * constraints.maxHeight) /
                        (itemCount - 1),
                  );
                },
                itemBuilder: (_, index) {
                  return LayoutBuilder(
                    builder: (_, constraints) {
                      return GestureDetector(
                        onTap: () {
                          pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        },
                        child: ValueListenableBuilder(
                          valueListenable: pageNotifier,
                          builder: (context, value, child) {
                            return Container(
                              width: constraints.maxHeight,
                              height: constraints.maxHeight,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: _getSelectedColor(index),
                                  width: 2,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                (index + 1).toString(),
                                style: TextStyles.s17MediumText
                                    .copyWith(color: _getSelectedColor(index)),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
