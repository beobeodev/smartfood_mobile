import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/presentation/home/home.dart';
import 'package:smarthealthy/presentation/home/widgets/recipe_today.widget.dart';

class HomeData extends StatefulWidget {
  const HomeData({super.key});

  @override
  State<HomeData> createState() => _HomeDataState();
}

class _HomeDataState extends State<HomeData> {
  final RefreshController _refreshController = RefreshController();

  void _listenChanged(BuildContext context, HomeState state) {
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
    }
  }

  void _onFail(QueryErrorType? failure) {
    if (failure == QueryErrorType.refresh) {
      _refreshController.refreshFailed();

      ToastUtil.showError(
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: _listenChanged,
      builder: (context, state) {
        return SmartRefresher(
          controller: _refreshController,
          onRefresh: () =>
              context.read<HomeBloc>().add(const HomeEvent.refresh()),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: AppSize.horizontalSpacing),
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                RecipeToday(
                  recipes: state.recipes ?? [],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
