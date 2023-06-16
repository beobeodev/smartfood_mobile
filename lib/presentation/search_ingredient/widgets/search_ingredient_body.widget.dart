import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/constants/enums/query_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/presentation/search_ingredient/ingredient.dart';

class SearchIngredientBody extends StatelessWidget {
  const SearchIngredientBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.horizontalSpace),
      child: BlocBuilder<SearchIngredientBloc, SearchIngredientState>(
        builder: (context, state) {
          return switch (state.queryInfo.status) {
            QueryStatus.loading => const LoadingIngredientGridView(),
            QueryStatus.success => const IngredientGridView(),
            QueryStatus.error => const CommonError(),
          };
        },
        buildWhen: (previous, current) =>
            previous.queryInfo != current.queryInfo &&
            current.queryInfo.type == QueryType.initial,
      ),
    );
  }
}
