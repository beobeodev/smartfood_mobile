import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smarthealthy/common/enums/query_error_type.enum.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/presentation/diary/cubit/search_practice/search_practice_cubit.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/practice_card.widget.dart';

class PracticeList extends StatefulWidget {
  const PracticeList({super.key});

  @override
  State<PracticeList> createState() => _PracticeListState();
}

class _PracticeListState extends State<PracticeList> {
  final RefreshController _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _loadMore() async {
    await context.read<SearchPracticeCubit>().loadMore();
  }

  void _listenGetChanged(BuildContext context, SearchPracticeState state) {
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
    return BlocConsumer<SearchPracticeCubit, SearchPracticeState>(
      listener: _listenGetChanged,
      builder: (context, state) {
        return SmartRefresher(
          controller: _refreshController,
          enablePullUp: state.info.canLoadMore,
          onLoading: _loadMore,
          enablePullDown: false,
          child: ListView.separated(
            itemCount: state.practices.length,
            itemBuilder: (context, index) {
              return PracticeCard(practice: state.practices[index]);
            },
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.horizontalSpacing,
              vertical: 10,
            ),
            separatorBuilder: (_, __) {
              return AppSize.h10;
            },
          ),
        );
      },
    );
  }
}
