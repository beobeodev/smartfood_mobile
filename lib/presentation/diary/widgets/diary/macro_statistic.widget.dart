import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/enums/macros_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MacroStatistic extends StatelessWidget {
  const MacroStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemSize = (constraints.maxWidth - 2 * 30) / 3;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(3, (index) {
            return MacrosItem(
              type: MacrosType.values[index],
              width: itemSize,
            );
          }),
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

  Color _getColor() {
    return switch (type) {
      MacrosType.protein => ColorStyles.mediumAquamarine,
      MacrosType.fat => ColorStyles.brilliantLavender,
      MacrosType.carbs => ColorStyles.lightSkyBlue,
    };
  }

  @override
  Widget build(BuildContext context) {
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
          SfLinearGauge(
            animateRange: true,
            axisTrackStyle: const LinearAxisTrackStyle(
              thickness: 10,
              edgeStyle: LinearEdgeStyle.bothCurve,
              color: ColorStyles.antiFlashWhite,
            ),
            barPointers: [
              LinearBarPointer(
                value: 50,
                thickness: 10,
                color: _getColor(),
                edgeStyle: LinearEdgeStyle.bothCurve,
              )
            ],
            showLabels: false,
            showTicks: false,
          ),
          AppSize.h10,
          Text(
            '43 / 95 g',
            style: TextStyles.s14RegularText,
          )
        ],
      ),
    );
  }
}
