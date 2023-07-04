import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/radial_gauge/common_radial_gauge.widget.dart';

class CalorieRadialGauge extends StatelessWidget {
  final double itemSize;

  const CalorieRadialGauge({super.key, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: itemSize,
      height: itemSize,
      child: BlocBuilder<DiaryBloc, DiaryState>(
        builder: (context, state) {
          return switch (state.status) {
            QueryStatus.loading => const CommonShimmer(
                child: CommonRadialGauge(
                  value: 65,
                ),
              ),
            QueryStatus.success => Stack(
                alignment: Alignment.center,
                children: [
                  const CommonRadialGauge(
                    value: 65,
                  ),
                  Text(
                    '65%',
                    style: TextStyles.boldText.copyWith(
                      fontSize: 24.sp,
                      color: ColorStyles.red400,
                    ),
                  )
                ],
              ),
            QueryStatus.error => const SizedBox.shrink()
          };
        },
      ),
    );
  }
}
