
import 'package:flutter/material.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/theme/text_styles.dart';
import 'package:smartfood/common/widgets/ellipsis_overflow_text.widget.dart';

class ListSearchedIngredients extends StatelessWidget {
  const ListSearchedIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: AppSize.horizontalSpace),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.width > 375 ? 3 : 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (_, index) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final double contentWidth = constraints.maxWidth - 20;

              return Container(
                decoration: BoxDecoration(
                  color: ColorStyles.antiFlashWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.network(
                        'https://www.halfyourplate.ca/wp-content/uploads/2014/12/one-apple-with-leaves.jpg',
                        width: contentWidth,
                        height: contentWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: EllipsisOverflowText(
                        'Xốt thịt nướng kiểu Hàn Quốc Barona',
                        textAlign: TextAlign.center,
                        style: TextStyles.regularText.copyWith(fontSize: 13.3),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
