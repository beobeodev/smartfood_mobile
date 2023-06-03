import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/constants/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/presentation/recipe_list/recipe_list.dart';
import 'package:smarthealthy/presentation/recipe_list/widgets/recipe_card.widget.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({
    super.key,
  });

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  final RefreshController _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _onLoadRefresh([bool isRefresh = false]) {
    final searchIngredientBloc = context.read<RecipeListBloc>();

    searchIngredientBloc.add(
      isRefresh
          ? const RecipeListEvent.refresh()
          : const RecipeListEvent.loadMore(),
    );
  }

  void _listenGetChanged(BuildContext context, RecipeListState state) {
    final queryStatus = state.queryStatus;

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
    return BlocConsumer<RecipeListBloc, RecipeListState>(
      listener: _listenGetChanged,
      builder: (context, state) {
        return SmartRefresher(
          controller: _refreshController,
          enablePullUp: state.queryStatus.canLoadMore,
          onLoading: _onLoadRefresh,
          onRefresh: () => _onLoadRefresh(true),
          child: ListView.separated(
            padding: const EdgeInsets.all(AppSize.horizontalSpace),
            itemCount: state.recipes!.length,
            separatorBuilder: (_, __) => const SizedBox(
              height: 20,
            ),
            itemBuilder: (context, index) {
              return RecipeCard(recipe: state.recipes![index]);
            },
          ),
        );
      },
    );
  }
}
