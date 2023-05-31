import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/custom_app_bar.widget.dart';
import 'package:smarthealthy/presentation/recipe_filter/bloc/recipe_filter.bloc.dart';

class RecipeFilterPage extends StatelessWidget {
  const RecipeFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _RecipeFilterView();
  }
}

class _RecipeFilterView extends StatelessWidget {
  const _RecipeFilterView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Filter',
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSize.horizontalSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Level',
              style: TextStyles.s17BoldText,
            ),
            Wrap(
              spacing: 5,
              children: context.read<RecipeFilterBloc>().state.levels.map((e) {
                return FilterChip(
                  label: Text(e.name.value),
                  labelStyle: TextStyles.s14RegularText,
                  selectedColor: ColorStyles.yellowGreen,
                  backgroundColor: ColorStyles.gray100,
                  showCheckmark: false,
                  elevation: 0,
                  pressElevation: 0,
                  onSelected: (value) {},
                  // selected: true,
                );
              }).toList(),
            ),
            Text(
              'Categories',
              style: TextStyles.s17BoldText,
            ),
            Wrap(
              spacing: 5,
              children:
                  context.read<RecipeFilterBloc>().state.categories.map((e) {
                return FilterChip(
                  label: Text(e.name),
                  labelStyle: TextStyles.s14RegularText,

                  selectedColor: ColorStyles.yellowGreen,
                  backgroundColor: ColorStyles.gray100,
                  showCheckmark: false,
                  elevation: 0,
                  pressElevation: 0,
                  onSelected: (value) {},
                  // selected: true,
                );
              }).toList(),
            ),
            Text(
              'Cuisine',
              style: TextStyles.s17BoldText,
            ),
            Wrap(
              spacing: 5,
              children:
                  context.read<RecipeFilterBloc>().state.cuisines.map((e) {
                return FilterChip(
                  label: Text(e.name),
                  selectedColor: ColorStyles.yellowGreen,
                  backgroundColor: ColorStyles.gray100,
                  showCheckmark: false,
                  elevation: 0,
                  labelStyle: TextStyles.s14RegularText,
                  pressElevation: 0,
                  onSelected: (value) {},
                  // selected: true,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
