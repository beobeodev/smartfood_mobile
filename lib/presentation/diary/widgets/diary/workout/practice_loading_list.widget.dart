import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/practice_container.widget.dart';

class PracticeLoadingList extends StatelessWidget {
  const PracticeLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      shrinkWrap: true,
      padding: AppSize.mealPadding,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => AppSize.h10,
      itemBuilder: (context, index) {
        return CommonShimmer(
          child: PracticeContainer(
            showShadow: false,
            child: Column(
              children: [
                Text(
                  '',
                  style: TextStyles.s17MediumText,
                ),
                AppSize.h10,
                Text(
                  '',
                  style: TextStyles.s14MediumText
                      .copyWith(color: ColorStyles.red400),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
