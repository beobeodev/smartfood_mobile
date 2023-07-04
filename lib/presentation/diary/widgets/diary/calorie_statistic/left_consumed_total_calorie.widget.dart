import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/calorie_statistic/calorie_loading_item.widget.dart';

class LeftConsumedTotalCalorie extends StatelessWidget {
  final double itemSize;

  const LeftConsumedTotalCalorie({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemSize,
      width: itemSize,
      child: Center(
        child: BlocBuilder<DiaryBloc, DiaryState>(
          builder: (context, state) {
            return switch (state.status) {
              QueryStatus.success => const SizedBox(),
              QueryStatus.loading => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                      List.generate(3, (index) => const CalorieLoadingItem()),
                ),
              QueryStatus.error => const SizedBox.shrink()
            };

            // return Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            // );
          },
        ),
      ),
    );
  }
}

class CalorieStatisticItem extends StatelessWidget {
  const CalorieStatisticItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '630 ',
                style: TextStyles.boldText.copyWith(fontSize: 22.sp),
              ),
              TextSpan(
                text: 'kcal',
                style: TextStyles.s17BoldText,
              )
            ],
          ),
        ),
        Text(
          'còn lại',
          style: TextStyles.regularText
              .copyWith(color: ColorStyles.gray400, fontSize: 14.sp),
        )
      ],
    );
  }
}
