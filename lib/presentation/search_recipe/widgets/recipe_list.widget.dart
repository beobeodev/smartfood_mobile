import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';
import 'package:smarthealthy/presentation/search_recipe/widgets/recipe_card.widget.dart';

class RecipeList extends StatefulWidget {
  final void Function(RecipeModel)? onAddDish;

  const RecipeList({
    super.key,
    this.onAddDish,
  });

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  final RefreshController _refreshController = RefreshController();
  late final bool isDishCard;

  @override
  void initState() {
    isDishCard = widget.onAddDish != null;
    super.initState();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _onLoadRefresh([bool isRefresh = false]) {
    final searchIngredientBloc = context.read<SearchRecipeBloc>();

    searchIngredientBloc.add(
      isRefresh
          ? const SearchRecipeEvent.refresh()
          : const SearchRecipeEvent.loadMore(),
    );
  }

  void _listenGetChanged(BuildContext context, SearchRecipeState state) {
    final queryStatus = state.queryInfo;

    switch (queryStatus.status) {
      case QueryStatus.error:
        _onFail(queryStatus.errorType);
        break;
      case QueryStatus.success:
        _onSuccess(queryStatus.type);
        break;
      default:
    }
  }

  void _onSuccess(QueryType type) {
    if (type == QueryType.refresh) {
      _refreshController.refreshCompleted();
    } else if (type == QueryType.loadMore) {
      _refreshController.loadComplete();
    }
  }

  void _onFail(QueryErrorType? failure) {
    if (failure == QueryErrorType.refresh) {
      _refreshController.refreshFailed();
    } else {
      _refreshController.loadFailed();
    }

    ToastUtil.showError(
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchRecipeBloc, SearchRecipeState>(
      listener: _listenGetChanged,
      builder: (context, state) {
        return SmartRefresher(
          controller: _refreshController,
          enablePullUp: state.queryInfo.canLoadMore,
          onLoading: _onLoadRefresh,
          onRefresh: () => _onLoadRefresh(true),
          enablePullDown: !isDishCard,
          child: ListView.separated(
            padding: const EdgeInsets.all(AppSize.horizontalSpacing),
            itemCount: state.recipes!.length,
            shrinkWrap: true,
            separatorBuilder: (_, __) => isDishCard ? AppSize.h10 : AppSize.h20,
            itemBuilder: (context, index) {
              final recipe = state.recipes![index];

              return isDishCard
                  ? DishCard(
                      recipe: recipe,
                      onAdd: widget.onAddDish,
                    )
                  : RecipeCard(recipe: recipe);
            },
          ),
        );
      },
    );
  }
}
