import 'package:flutter/material.dart';
import 'package:smarthealthy/presentation/home/widgets/loading/recipe_loading.widget.dart';

class HomeLoading extends StatelessWidget {
  const HomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [RecipeTodayLoading()],
    );
  }
}
