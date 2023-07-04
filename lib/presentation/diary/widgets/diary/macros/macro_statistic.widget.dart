import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/macros_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_shimmer.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/macros/macros_linear.widget.dart';

class MacroStatistic extends StatelessWidget {
  const MacroStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemSize = (constraints.maxWidth - 2 * 30) / 3;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MacrosItem(
              type: MacrosType.values[0],
              width: itemSize,
            ),
            MacrosItem(
              type: MacrosType.values[1],
              width: itemSize,
            ),
            MacrosItem(
              type: MacrosType.values[2],
              width: itemSize,
            )
          ],
        );
      },
    );
  }
}

class MacrosItem extends StatelessWidget {
  final MacrosType type;
  final double width;

  const MacrosItem({super.key, required this.type, required this.width});

  String _getTitle() {
    return switch (type) {
      MacrosType.protein => LocaleKeys.macros_protein.tr(),
      MacrosType.fat => LocaleKeys.macros_fat.tr(),
      MacrosType.carbs => LocaleKeys.macros_carbs.tr(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiaryBloc, DiaryState>(
      builder: (context, state) {
        return SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _getTitle(),
                style: TextStyles.s14RegularText,
              ),
              AppSize.h10,
              state.status == QueryStatus.loading
                  ? CommonShimmer(
                      child: Column(
                        children: [
                          MacrosLinear(type: type, value: 20),
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
                        MacrosLinear(type: type, value: 20),
                        AppSize.h10,
                        Align(
                          child: Text(
                            '59 / 188 g',
                            style: TextStyles.s14RegularText,
                          ),
                        )
                      ],
                    )
            ],
          ),
        );
      },
    );
  }
}
