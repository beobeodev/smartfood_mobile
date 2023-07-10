import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/presentation/diary/cubit/search_meal/search_meal_cubit.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/dish_card.widget.dart';

class DishList extends StatefulWidget {
  final void Function(MealModel) onAddDish;

  const DishList({
    super.key,
    required this.onAddDish,
  });

  @override
  State<DishList> createState() => _DishListState();
}

class _DishListState extends State<DishList> {
  final RefreshController _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _onLoadMore() {
    context.read<SearchMealCubit>().loadMore();
  }

  void _listenGetChanged(BuildContext context, SearchMealState state) {
    final queryStatus = state.info;

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
    if (type == QueryType.loadMore) {
      _refreshController.loadComplete();
    }
  }

  void _onFail(QueryErrorType? failure) {
    if (failure == QueryErrorType.loadMore) {
      _refreshController.loadFailed();
    }

    ToastUtil.showError(
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchMealCubit, SearchMealState>(
      listener: _listenGetChanged,
      builder: (context, state) {
        return SmartRefresher(
          controller: _refreshController,
          enablePullUp: state.info.canLoadMore,
          onLoading: _onLoadMore,
          enablePullDown: false,
          child: ListView.separated(
            padding: const EdgeInsets.all(AppSize.horizontalSpacing),
            itemCount: state.meals.length,
            shrinkWrap: true,
            separatorBuilder: (_, __) => AppSize.h10,
            itemBuilder: (context, index) {
              final meal = state.meals[index];

              return DishCard(
                meal: meal,
                onAdd: widget.onAddDish,
              );
            },
          ),
        );
      },
    );
  }
}
