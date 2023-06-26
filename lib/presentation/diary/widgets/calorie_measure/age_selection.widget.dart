import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_icon_button.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/default_measure_container.widget.dart';

class AgeSelection extends StatelessWidget {
  final double size;
  final ValueNotifier<int> ageNotifier;

  const AgeSelection({
    super.key,
    required this.size,
    required this.ageNotifier,
  });

  Future<void> _showAgeBottomSheet(BuildContext context) async {
    final value = await showModalBottomSheet(
      context: context,
      enableDrag: false,
      builder: (context) {
        return SizedBox(
          height: context.height / 3,
          child: CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: 32,
            scrollController: FixedExtentScrollController(),
            // This is called when selected item is changed.
            onSelectedItemChanged: (int selectedItem) {},
            children: List<Widget>.generate(100, (int index) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Navigator.of(context).pop(index + 1),
                child: Center(
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyles.regularText.copyWith(fontSize: 18.sp),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );

    if (value != null) {
      ageNotifier.value = value;
    }
  }

  void _decreaseAge() {
    if (ageNotifier.value > 1) {
      ageNotifier.value -= 1;
    }
  }

  void _increaseAge() {
    if (ageNotifier.value < 101) {
      ageNotifier.value += 1;
    }
  }

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
                  CommonIconButton(
                    onPressed: _decreaseAge,
                    icon: Icons.remove,
                    iconColor: ColorStyles.red300,
                  ),
                  GestureDetector(
                    onTap: () => _showAgeBottomSheet(context),
                    child: ValueListenableBuilder(
                      valueListenable: ageNotifier,
                      builder: (context, value, child) {
                        return Text(
                          value.toString(),
                          style: TextStyles.boldText.copyWith(fontSize: 22),
                        );
                      },
                    ),
                  ),
                  CommonIconButton(
                    onPressed: _increaseAge,
                    icon: Icons.add,
                    iconColor: ColorStyles.green600,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
