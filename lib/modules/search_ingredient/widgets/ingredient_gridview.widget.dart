import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smartfood/common/constants/enums/get_ingredient_error_type.enum.dart';
import 'package:smartfood/common/constants/enums/get_ingredient_type.enum.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/utils/toast.util.dart';
import 'package:smartfood/modules/search_ingredient/ingredient.dart';

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
    state.maybeMap(
      success: (success) => _onSuccess(success),
      failure: (failure) => _onFail(failure),
      orElse: () {},
    );
  }

  void _onSuccess(SearchIngredientSuccess success) {
    if (success.getType == GetIngredientType.refresh) {
      _refreshController.refreshCompleted();
    } else if (success.getType == GetIngredientType.loadMore) {
      _refreshController.loadComplete();
    }
  }

  void _onFail(SearchIngredientFailure failure) {
    if (failure.errorType == GetIngredientErrorType.refresh) {
      _refreshController.refreshFailed();
    } else {
      _refreshController.loadFailed();
    }
    ToastUtil.showError(
      context,
    );
  }

  bool _getConditionToListen(
    SearchIngredientState previous,
    SearchIngredientState current,
  ) {
    if (current is! SearchIngredientSuccess) {
      return false;
    }

    final getType = current.getType;

    return getType == GetIngredientType.loadMore ||
        getType == GetIngredientType.refresh;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchIngredientBloc, SearchIngredientState>(
      listener: _listenGetChanged,
      listenWhen: _getConditionToListen,
      buildWhen: _getConditionToListen,
      builder: (context, state) {
        return SmartRefresher(
          controller: _refreshController,
          enablePullUp: state is SearchIngredientSuccess && state.canLoadMore,
          onLoading: _onLoadRefresh,
          onRefresh: () => _onLoadRefresh(true),
          child: GridView.builder(
            padding: const EdgeInsets.only(top: AppSize.horizontalSpace),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: context.width > 375 ? 3 : 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.35,
            ),
            itemCount: state.ingredients!.length,
            itemBuilder: (context, index) {
              return IngredientItem(
                ingredient: state.ingredients![index],
              );
            },
          ),
        );
      },
    );
  }
}
