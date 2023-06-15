import 'package:advance_image_picker/advance_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/common_icon_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_search_bar.widget.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:smarthealthy/presentation/search_ingredient/bloc/search_ingredient.bloc.dart';
import 'package:unicons/unicons.dart';

class IngredientSearchBar extends StatelessWidget
    implements PreferredSizeWidget {
  const IngredientSearchBar({super.key});

  Future<void> _navigateToImagePicker(BuildContext context) async {
    final List<ImageObject>? imageObjects = await Navigator.of(context)
        .pushNamed<List<ImageObject>?>(AppRouter.imagePicker);

    if (imageObjects != null && imageObjects.isNotEmpty) {
      final List<String> paths =
          imageObjects.map((e) => e.modifiedPath).toList();

      Navigator.of(context)
          .pushNamed(AppRouter.detectIngredient, arguments: paths);
    }
  }

  void _onSearchIngredients(BuildContext context, String value) {
    context
        .read<SearchIngredientBloc>()
        .add(SearchIngredientEvent.searched(text: value));
  }

  @override
  Widget build(BuildContext context) {
    return CommonSearchBar(
      onFieldSubmitted: (value) => _onSearchIngredients(context, value),
      actions: [
        CommonIconButton(
          onPressed: () => _navigateToImagePicker(context),
          icon: UniconsLine.focus_target,
          iconColor: ColorStyles.primary,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.appBarHeight);
}
