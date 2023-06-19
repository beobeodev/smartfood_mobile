import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/presentation/diary/ui_models/diary_mode.model.dart';

class DiaryModeItem extends StatelessWidget {
  const DiaryModeItem({
    super.key,
    required this.mode,
    required this.onPressed,
  });

  final DiaryModeUIModel mode;
  final VoidCallback onPressed;

  void _navigateToNewRoute(BuildContext context) {
    Navigator.of(context).pushNamed(mode.route);
    onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: mode.controller!,
      builder: (context, child) {
        return Visibility(
          visible: !mode.animation!.isDismissed,
          child: GestureDetector(
            onTap: () => _navigateToNewRoute(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: mode.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    mode.title,
                    style:
                        TextStyles.s14MediumText.copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ScaleTransition(
                  scale: mode.animation!,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 56,
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mode.backgroundColor,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: mode.icon,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
