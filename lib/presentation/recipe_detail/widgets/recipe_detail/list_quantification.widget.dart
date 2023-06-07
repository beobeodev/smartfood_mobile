import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/quantification.model.dart';

class ListQuantification extends StatelessWidget {
  final List<QuantificationModel> quantification;

  const ListQuantification({super.key, required this.quantification});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingredients',
          style: TextStyles.boldText.copyWith(fontSize: 18.sp),
        ),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 15),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: quantification.length,
          separatorBuilder: (_, __) {
            return const SizedBox(
              height: 8,
            );
          },
          itemBuilder: (_, index) {
            final currentQuantification = quantification[index];

            return Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://login.medlatec.vn//ImagePath/images/20221028/20221028_qua-tao-1.jpg',
                    width: 48.w,
                    height: 48.w,
                    fit: BoxFit.cover,
                  ),
                ),
                AppSize.w10,
                Text(
                  currentQuantification.ingredient.name,
                  style: TextStyles.mediumText.copyWith(fontSize: 15.sp),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: ColorStyles.blue300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    currentQuantification.quantitative,
                    style: TextStyles.s14RegularText.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
