import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/enums/query_type.enum.dart';
import 'package:smarthealthy/presentation/home/bloc/home.bloc.dart';
import 'package:smarthealthy/presentation/home/widgets/home_data.widget.dart';
import 'package:smarthealthy/presentation/home/widgets/loading/home_loading.widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return switch (state.queryInfo.status) {
          QueryStatus.loading => const HomeLoading(),
          QueryStatus.success => const HomeData(),
          QueryStatus.error => const SizedBox.shrink()
        };
      },
      buildWhen: (previous, current) =>
          previous.queryInfo.status != current.queryInfo.status &&
          current.queryInfo.type == QueryType.initial,
    );
  }
}
