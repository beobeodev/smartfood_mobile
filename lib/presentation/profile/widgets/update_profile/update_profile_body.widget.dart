import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/validator.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/data/models/user.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';

class UpdateProfileBody extends StatelessWidget {
  final ValueNotifier<UserModel> userNotifier;
  final GlobalKey<FormState> formKey;

  const UpdateProfileBody({
    super.key,
    required this.userNotifier,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.horizontalSpacing),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            AppTextFormField(
              labelText: LocaleKeys.texts_first_name.tr(),
              validator: (value) => ValidatorUtil.validateFirstName(value),
              initialValue: userNotifier.value.firstName,
              onChanged: (value) {
                userNotifier.value =
                    userNotifier.value.copyWith(firstName: value);
              },
            ),
            AppSize.h20,
            AppTextFormField(
              labelText: LocaleKeys.texts_last_name.tr(),
              validator: (value) => ValidatorUtil.validateLastName(value),
              initialValue: userNotifier.value.lastName,
              onChanged: (value) {
                userNotifier.value =
                    userNotifier.value.copyWith(lastName: value);
              },
            )
          ],
        ),
      ),
    );
  }
}
