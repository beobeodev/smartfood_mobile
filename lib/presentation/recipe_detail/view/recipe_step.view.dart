import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/custom_app_bar.widget.dart';
import 'package:smarthealthy/data/models/recipe_step.model.dart';
import 'package:smarthealthy/presentation/recipe_detail/widgets/recipe_step/step_content.widget.dart';

class RecipeStepPage extends StatelessWidget {
  final List<RecipeStepModel> steps;

  const RecipeStepPage({super.key, required this.steps});

  @override
  Widget build(BuildContext context) {
    return _RecipeStepView(steps);
  }
}

class _RecipeStepView extends StatefulWidget {
  final List<RecipeStepModel> steps;

  const _RecipeStepView(this.steps);

  @override
  State<_RecipeStepView> createState() => _RecipeStepViewState();
}

class _RecipeStepViewState extends State<_RecipeStepView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: StepContent(steps: widget.steps),
      backgroundColor: Colors.white,
    );
  }
}
