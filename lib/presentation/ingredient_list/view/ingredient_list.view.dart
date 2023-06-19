import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
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
    return Scaffold(
      appBar: CommonAppBar(
        title: LocaleKeys.texts_ingredient_list.tr(),
      ),
      body: const Stack(
        children: [CurrentIngredientList(), StartButton()],
      ),
    );
  }
}
