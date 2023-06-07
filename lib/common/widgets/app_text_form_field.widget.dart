import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    this.textController,
    this.isObscure = false,
    this.readOnly = false,
    this.extendField = false,
    this.enabled = true,
    this.isCenterText = false,
    this.autoFocus = false,
    this.isDense = false,
    this.expands = false,
    this.hintText,
    this.errorText,
    this.labelText,
    this.initialValue,
    this.borderRadius = 100,
    this.height,
    this.suffixIconSize,
    this.borderColor = Colors.transparent,
    this.focusedBorderColor = ColorStyles.yellowGreen,
    this.fillColor = ColorStyles.antiFlashWhite,
    this.hintColor = ColorStyles.gray200,
    this.prefixIconColor = ColorStyles.primary,
    this.suffixIconColor,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTapPrefixIcon,
    this.onTapSuffixIcon,
    this.labelStyle,
    this.focusNode,
    this.maxLines = 1,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 20),
  }) : super(key: key);

  final TextEditingController? textController;

  final bool isObscure;
  final bool readOnly;
  final bool extendField;
  final bool enabled;
  final bool isCenterText;
  final bool autoFocus;
  final bool isDense;
  final bool expands;

  final String? hintText;
  final String? errorText;
  final String? labelText;
  final String? initialValue;

  final double borderRadius;
  final double? height;
  final double? suffixIconSize;

  final Color focusedBorderColor;
  final Color borderColor;
  final Color fillColor;
  final Color hintColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;

  final IconData? suffixIcon;
  final IconData? prefixIcon;

  final TextInputType? keyboardType;

  final String? Function(String?)? validator;

  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final VoidCallback? onTapPrefixIcon;
  final VoidCallback? onTapSuffixIcon;

  final TextStyle? labelStyle;

  final FocusNode? focusNode;

  final int maxLines;

  final EdgeInsetsGeometry contentPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              labelText!,
              style: labelStyle ?? TextStyles.s14MediumText,
            ),
          ),
        SizedBox(
          height: height,
          child: TextFormField(
            maxLines: maxLines,
            expands: expands,
            controller: textController,
            focusNode: focusNode,
            autofocus: autoFocus,
            textInputAction: TextInputAction.done,
            onChanged: onChanged,
            onTap: onTap,
            onFieldSubmitted: onFieldSubmitted,
            validator: validator,
            obscureText: isObscure,
            readOnly: readOnly,
            enableSuggestions: false,
            enabled: enabled,
            keyboardType: keyboardType,
            initialValue: initialValue,
            style: TextStyles.s14RegularText
                .copyWith(color: ColorStyles.zodiacBlue),
            textAlign: isCenterText ? TextAlign.center : TextAlign.start,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyles.s14RegularText.copyWith(color: hintColor),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: const BorderSide(
                  color: ColorStyles.red600,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: focusedBorderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: const BorderSide(
                  color: ColorStyles.red600,
                ),
              ),
              isDense: isDense,
              filled: true,
              fillColor: fillColor,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              prefixIcon: prefixIcon != null
                  ? GestureDetector(
                      onTap: onTapPrefixIcon,
                      behavior: HitTestBehavior.opaque,
                      child: Icon(
                        prefixIcon,
                        color: prefixIconColor,
                      ),
                    )
                  : null,
              suffixIcon: suffixIcon != null
                  ? GestureDetector(
                      onTap: onTapSuffixIcon,
                      behavior: HitTestBehavior.opaque,
                      child: Icon(
                        suffixIcon,
                        color: suffixIconColor,
                        size: suffixIconSize,
                      ),
                    )
                  : null,
              helperText: extendField ? '' : null,
              helperStyle: extendField ? TextStyles.s14RegularText : null,
              errorText:
                  errorText == '' || errorText == null ? null : errorText,
              errorStyle: TextStyles.s14RegularText
                  .copyWith(color: Colors.red, height: 0),
            ),
          ),
        ),
      ],
    );
  }
}
