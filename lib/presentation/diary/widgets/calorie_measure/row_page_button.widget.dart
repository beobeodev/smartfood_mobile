import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/filled_icon_button.widget.dart';

class RowPageButton extends StatelessWidget {
  final ValueNotifier<int> pageNotifier;
  final void Function(bool) navigatePage;

  const RowPageButton({
    super.key,
    required this.pageNotifier,
    required this.navigatePage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSize.horizontalSpacing,
        0,
        AppSize.horizontalSpacing,
        context.bottomSpacing,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ValueListenableBuilder(
            valueListenable: pageNotifier,
            builder: (context, value, child) {
              return Visibility(
                visible: value > 0,
                child: child!,
              );
            },
            child: FilledIconButton(
              onTap: () => navigatePage(true),
              icon: Icons.chevron_left_rounded,
              iconSize: 35,
              backgroundColor: ColorStyles.gray200,
            ),
          ),
          FilledIconButton(
            onTap: () => navigatePage(false),
            icon: Icons.chevron_right_rounded,
            iconSize: 35,
          )
        ],
      ),
    );
  }
}
