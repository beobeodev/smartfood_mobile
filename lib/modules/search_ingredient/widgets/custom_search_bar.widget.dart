import 'package:advance_image_picker/advance_image_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/app_text_form_field.widget.dart';
import 'package:smartfood/configs/app_routes.dart';
import 'package:smartfood/data/dtos/pagination/pagination_query.dto.dart';
import 'package:smartfood/generated/locale_keys.g.dart';
import 'package:smartfood/modules/search_ingredient/bloc/search_ingredient.bloc.dart';
import 'package:unicons/unicons.dart';

class CustomSearchBar extends StatelessWidget {
  final bool showBoxShadow;

  const CustomSearchBar({super.key, this.showBoxShadow = true});

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

  void _onSearchIngredients(BuildContext context, String value) {
    if (value.isNotEmpty) {
      final searchIngredientBloc = context.read<SearchIngredientBloc>();

      PaginationQueryDTO queryDTO = searchIngredientBloc.state.query;
      queryDTO = queryDTO.copyWith(page: 1, search: value);

      context
          .read<SearchIngredientBloc>()
          .add(SearchIngredientEvent.get(query: queryDTO));
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
              onFieldSubmitted: (value) => _onSearchIngredients(context, value),
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
