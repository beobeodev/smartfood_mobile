import 'package:advance_image_picker/advance_image_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/app_text_form_field.widget.dart';
import 'package:smartfood/configs/app_routes.dart';
import 'package:smartfood/generated/locale_keys.g.dart';
import 'package:unicons/unicons.dart';

class SearchBar extends StatelessWidget {
  final bool showBoxShadow;

  const SearchBar({super.key, this.showBoxShadow = true});

  Future<void> _navigateToImagePicker(BuildContext context) async {
    final List<ImageObject>? imageObjects = await Navigator.of(context)
        .pushNamed<List<ImageObject>?>(AppRoutes.imagePicker);

    if (imageObjects != null && imageObjects.isNotEmpty) {
      final List<String> paths =
          imageObjects.map((e) => e.modifiedPath).toList();

      Navigator.of(context)
          .pushNamed(AppRoutes.detectIngredient, arguments: paths);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: showBoxShadow
                  ? [
                      BoxShadow(
                        blurRadius: 50,
                        offset: const Offset(0, 2),
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]
                  : null,
              borderRadius: BorderRadius.circular(100),
            ),
            child: AppTextFormField(
              prefixIcon: UniconsLine.search,
              borderColor: showBoxShadow
                  ? Colors.transparent
                  : ColorStyles.antiFlashWhite,
              borderRadius: 100,
              hintText: LocaleKeys.ingredient_find.tr(),
              extendField: false,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () async {
            await _navigateToImagePicker(context);
          },
          child: const Icon(
            UniconsLine.focus_target,
            color: ColorStyles.primary,
            size: 30,
          ),
        ),
      ],
    );
  }
}
