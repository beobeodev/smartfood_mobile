import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/default_measure_container.widget.dart';

class AgeSelection extends StatelessWidget {
  final double size;

  const AgeSelection({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultMeasureContainer(
      size: size,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              LocaleKeys.measure_age.tr(),
              style: TextStyles.s17BoldText
                  .copyWith(color: ColorStyles.yellowGreen),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.remove),
                  Text(
                    '22',
                    style: TextStyles.boldText.copyWith(fontSize: 22),
                  ),
                  const Icon(Icons.add)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
