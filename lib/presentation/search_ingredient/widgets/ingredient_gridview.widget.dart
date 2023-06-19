import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/constants/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/presentation/search_ingredient/search_ingredient.dart';

class IngredientGridView extends StatefulWidget {
  const IngredientGridView({
    super.key,
  });

  @override
  State<IngredientGridView> createState() => _IngredientGridViewState();
}

class _IngredientGridViewState extends State<IngredientGridView> {
  final RefreshController _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _onLoadRefresh([bool isRefresh = false]) {
    final searchIngredientBloc = context.read<SearchIngredientBloc>();

    searchIngredientBloc.add(
      isRefresh
          ? const SearchIngredientEvent.refresh()
          : const SearchIngredientEvent.loadMore(),
    );
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
    return BlocConsumer<SearchIngredientBloc, SearchIngredientState>(
      listener: _listenGetChanged,
      builder: (context, state) {
        return SmartRefresher(
          controller: _refreshController,
          enablePullUp: state.queryInfo.canLoadMore,
          onLoading: _onLoadRefresh,
          onRefresh: () => _onLoadRefresh(true),
          child: GridView.builder(
            padding: const EdgeInsets.only(top: AppSize.horizontalSpacing),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.35,
            ),
            itemCount: state.ingredients!.length,
            itemBuilder: (context, index) {
              return IngredientGridItem(
                ingredient: state.ingredients![index],
              );
            },
          ),
        );
      },
    );
  }
}
