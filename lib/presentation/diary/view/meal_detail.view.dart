import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/diary/bloc/meal_detail/meal_detail.bloc.dart';

class MealDetailPage extends StatelessWidget {
  final RecipeModel recipe;

  const MealDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MealDetailBloc(),
      child: const _MealDetailView(),
    );
  }
}

class _MealDetailView extends StatelessWidget {
  const _MealDetailView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(),
      body: SizedBox(),
    );
  }
}
