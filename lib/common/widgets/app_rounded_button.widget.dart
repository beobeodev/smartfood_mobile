import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';

class AppRoundedButton extends StatelessWidget {
  AppRoundedButton({
    Key? key,
    required this.onPressed,
    this.width,
    this.height,
    this.borderRadius = 7,
    this.elevation = 0,
    this.backgroundColor = ColorStyles.primary,
    this.disableBackgroundColor = ColorStyles.gray100,
    this.shadowColor,
    required this.content,
    TextStyle? textStyle,
    this.isDisable = false,
    this.isLoading = false,
    this.prefixIcon,
    this.suffixIcon,
    this.child,
    this.borderSide,
  })  : textStyle =
            textStyle ?? TextStyles.s14BoldText.copyWith(color: Colors.white),
        super(key: key);

  final VoidCallback onPressed;

  final double? width;
  final double? height;
  final double borderRadius;
  final double elevation;

  final Color backgroundColor;
  final Color disableBackgroundColor;
  final Color? shadowColor;

  final String content;

  final TextStyle textStyle;

  final bool isLoading;
  final bool isDisable;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? child;

  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 48.h,
      child: Theme(
        data: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(
                isDisable ? disableBackgroundColor : backgroundColor,
              ),
              foregroundColor: MaterialStateProperty.all<Color>(
                isDisable ? disableBackgroundColor : backgroundColor,
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                isDisable ? disableBackgroundColor : backgroundColor,
              ),
              elevation: MaterialStateProperty.resolveWith<double>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return 0;
                  }

                  return elevation;
                },
              ),
            ),
          ),
        ),
        child: FilledButton(
          onPressed: (isLoading || isDisable) ? null : onPressed,
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: borderSide ?? BorderSide.none,
            ),
            shadowColor: shadowColor,
            splashFactory: NoSplash.splashFactory,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            disabledBackgroundColor: disableBackgroundColor,
            disabledForegroundColor: disableBackgroundColor,
            enableFeedback: false,
            backgroundColor: backgroundColor,
          ),
          child: isLoading
              ? const LoadingDot(
                  color: ColorStyles.primary,
                )
              : (child ??
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (prefixIcon != null)
                          Row(
                            children: [
                              prefixIcon!,
                              AppSize.w15,
                            ],
                          ),
                        Text(
                          content,
                          style: textStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (suffixIcon != null)
                          Row(
                            children: [AppSize.w15, suffixIcon!],
                          ),
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
