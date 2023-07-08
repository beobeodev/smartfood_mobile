import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/query_status.enum.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/auth/auth.dart';
import 'package:smarthealthy/presentation/recipe_detail/bloc/rating/recipe_rating.bloc.dart';
import 'package:smarthealthy/presentation/recipe_detail/bloc/recipe_detail.bloc.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_detail/recipe_detail.widget.dart';

class RecipeDetailPage extends StatelessWidget {
  final String recipeId;

  const RecipeDetailPage({super.key, required this.recipeId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => RecipeDetailBloc(
            recipeRepository: getIt.get<RecipeRepository>(),
          )..add(RecipeDetailEvent.started(id: recipeId)),
        ),
        BlocProvider(
          create: (context) =>
              RecipeRatingBloc(recipeRepository: getIt.get<RecipeRepository>()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<RecipeRatingBloc, RecipeRatingState>(
            listener: _listenRatingChanged,
          ),
          BlocListener<RecipeDetailBloc, RecipeDetailState>(
            listener: _listenDetailChanged,
          ),
        ],
        child: const _RecipeDetailView(),
      ),
    );
  }

  void _listenRatingChanged(BuildContext context, RecipeRatingState state) {
    DialogUtil.hideLoading(context);

    switch (state.status) {
      case QueryStatus.error:
        ToastUtil.showError(context);
        break;
      case QueryStatus.loading:
        DialogUtil.showLoading(context);
        break;
      default:
        break;
    }
  }

  void _listenDetailChanged(BuildContext context, RecipeDetailState state) {
    state.mapOrNull(
      success: (_) {
        if (context.read<AuthBloc>().state.user != null) {
          context
              .read<RecipeDetailBloc>()
              .add(RecipeDetailEvent.sendCook(id: recipeId));
        }
      },
    );
  }
}

class _RecipeDetailView extends StatelessWidget {
  const _RecipeDetailView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailBloc, RecipeDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state.mapOrNull(
            loading: (_) => const CommonAppBar(),
            failure: (_) => const CommonAppBar(),
          ),
          body: state.map(
            loading: (_) => const Center(
              child: LoadingDot(),
            ),
            success: (successState) =>
                RecipeDetail(recipe: successState.recipe),
            failure: (_) => const CommonError(),
          ),
          backgroundColor: Colors.white,
        );
      },
    );
  }
}
