import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/presentation/ingredient_list/widgets/current_ingredient_list.widget.dart';
import 'package:smarthealthy/presentation/ingredient_list/widgets/start_button.widget.dart';

class IngredientListPage extends StatelessWidget {
  const IngredientListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _IngredientListView();
  }
}

class _IngredientListView extends StatelessWidget {
  const _IngredientListView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: 'Danh sách nguyên liệu',
      ),
      body: Stack(
        children: [CurrentIngredientList(), StartButton()],
      ),
    );
  }
}
