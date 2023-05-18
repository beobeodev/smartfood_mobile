import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/widgets/paged_view/common_paged_grid_view.dart';
import 'package:smartfood/data/models/ingredient.model.dart';
import 'package:smartfood/modules/search_ingredient/widgets/ingredient_item.widget.dart';

class IngredientGridView extends StatelessWidget {
  final PagingController<int, IngredientModel> pagingController;

  const IngredientGridView({
    super.key,
    required this.pagingController,
  });

  @override
  Widget build(BuildContext context) {
    return CommonPagedGridView(
      pagingController: pagingController,
      itemBuilder: (context, item, index) {
        return IngredientItem(
          ingredient: item,
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.width > 375 ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.35,
      ),
    );
  }
}
