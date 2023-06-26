import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/common/widgets/common_not_found.widget.dart';
import 'package:smarthealthy/data/models/ingredient.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/ingredient_list/widgets/ingredient_list_item.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/search_ingredient.dart';

class SearchedIngredientList extends StatefulWidget {
  const SearchedIngredientList({
    super.key,
  });

  @override
  State<SearchedIngredientList> createState() => _SearchedIngredientListState();
}

class _SearchedIngredientListState extends State<SearchedIngredientList> {
  final RefreshController _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _onLoad() {
    context
        .read<SearchIngredientBloc>()
        .add(const SearchIngredientEvent.loadMore());
  }

  void _listenGetChanged(BuildContext context, SearchIngredientState state) {
    final queryStatus = state.queryInfo;

    switch (queryStatus.status) {
      case QueryStatus.error:
        _onFail(queryStatus.errorType);
        break;
      case QueryStatus.success:
        _onSuccess(queryStatus.type);
        break;
      default:
        return;
    }
  }

  void _onSuccess(QueryType type) {
    if (type == QueryType.loadMore) {
      _refreshController.loadComplete();
    }
  }

  void _onFail(QueryErrorType? failure) {
    if (failure == QueryErrorType.refresh) {
      _refreshController.loadFailed();
    }

    ToastUtil.showError(
      context,
    );
  }

  void _onSelectIngredient(IngredientModel ingredient) {
    Navigator.of(context).pop(ingredient);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchIngredientBloc, SearchIngredientState>(
      listener: _listenGetChanged,
      builder: (context, state) {
        final ingredients = state.ingredients!;

        if (ingredients.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.horizontalSpacing,
            ),
            child: CommonNotFound(
              text: LocaleKeys.search_ingredient_not_found.tr(),
            ),
          );
        }

        return SmartRefresher(
          controller: _refreshController,
          enablePullDown: false,
          enablePullUp: state.queryInfo.canLoadMore,
          onLoading: _onLoad,
          child: ListView.separated(
            itemCount: ingredients.length,
            separatorBuilder: (context, index) => AppSize.h10,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.horizontalSpacing,
              vertical: 10,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _onSelectIngredient(ingredients[index]),
                child: IngredientListItem(
                  ingredient: ingredients[index],
                  hasDismiss: false,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
