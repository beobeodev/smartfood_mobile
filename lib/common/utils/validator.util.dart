import 'package:easy_localization/easy_localization.dart';
import 'package:smarthealthy/common/extensions/string.extension.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

abstract class ValidatorUtil {
  static String? validateEmail(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return LocaleKeys.validator_email_required.tr();
      } else if (!value.isEmail) {
        return LocaleKeys.validator_invalid_email.tr();
      }
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return LocaleKeys.validator_password_required.tr();
      }
      // else {
      //   RegExp regex = RegExp(
      //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
      //   );

      //   if (!regex.hasMatch(value)) {
      //     return LocaleKeys.validator_invalid_password.tr();
      //   }
      // }
    }

    return null;
  }

  static String? validateLoginPassword(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return LocaleKeys.validator_password_required.tr();
      } else if (value.length < 6) {
        return LocaleKeys.validator_invalid_login_password.tr();
      }
    }

    return null;
  }

  static String? validateFirstName(String? value) {
    final newValue = value?.trim();

    if (newValue == null || newValue.isEmpty) {
      return LocaleKeys.validator_first_name_required.tr();
    }

    return null;
  }

  static String? validateLastName(String? value) {
    final newValue = value?.trim();

    if (newValue == null || newValue.isEmpty) {
      return LocaleKeys.validator_last_name_required.tr();
    }

    return null;
  }

  static String? validateConfirmPassword(String? value, String password) {
    if (value != null) {
      if (value != password) {
        return LocaleKeys.validator_not_match_password.tr();
      } else if (value.isEmpty) {
        return LocaleKeys.validator_confirm_password_required.tr();
      }
    }

    return null;
  }
}
