import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/constants/enums/get_ingredient_error_type.enum.dart';
import 'package:smartfood/common/constants/enums/get_ingredient_type.enum.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/widgets/common_error.widget.dart';
import 'package:smartfood/common/widgets/common_not_found.widget.dart';
import 'package:smartfood/generated/locale_keys.g.dart';
import 'package:smartfood/modules/search_ingredient/ingredient.dart';

class ListSearchedIngredients extends StatelessWidget {
  const ListSearchedIngredients({super.key});

  Widget _getFailWidget(
    SearchIngredientFailure errorState,
    BuildContext context,
  ) {
    switch (errorState.errorType) {
      case GetIngredientErrorType.notFound:
        return CommonNotFound(
          text: LocaleKeys.search_ingredient_not_found.tr(),
        );
      case GetIngredientErrorType.initial:
        return const CommonError();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.horizontalSpace),
      child: BlocBuilder<SearchIngredientBloc, SearchIngredientState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const LoadingIngredientGridView(),
            success: (successState) => const IngredientGridView(),
            failure: (errorState) => _getFailWidget(errorState, context),
          );
        },
        buildWhen: (previous, current) =>
            current.getType == GetIngredientType.initial,
      ),
    );
  }
}
