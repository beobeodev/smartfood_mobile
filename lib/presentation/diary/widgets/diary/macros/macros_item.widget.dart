import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';
import 'package:smarthealthy/presentation/diary/ui_models/macros.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/macros/macros_linear.widget.dart';

class MacrosItem extends StatelessWidget {
  final MacrosUIModel item;
  final double width;
  final bool isLoading;

  const MacrosItem({
    super.key,
    required this.item,
    required this.width,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: TextStyles.s14RegularText,
          ),
          AppSize.h10,
          isLoading
              ? CommonShimmer(
                  child: Column(
                    children: [
                      MacrosLinear(color: item.color, value: 20),
                      AppSize.h10,
                      CommonShimmer(
                        width: 50,
                        height: 14.sp,
                      )
                    ],
                  ),
                )
              : Column(
                  children: [
                    MacrosLinear(
                      color: item.color,
                      value: item.consume,
                      maxValue: item.value,
                    ),
                    AppSize.h10,
                    Align(
                      child: Text(
                        '${item.consume} / ${item.value} g',
                        style: TextStyles.s14RegularText,
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}
