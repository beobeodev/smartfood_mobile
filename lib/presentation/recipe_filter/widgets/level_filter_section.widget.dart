import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/recipe_filter/bloc/recipe_filter.bloc.dart';
import 'package:smarthealthy/presentation/recipe_filter/widgets/recipe_filter_chip.widget.dart';

class LevelFilterSection extends StatelessWidget {
  const LevelFilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.filter_level.tr(),
          style: TextStyles.s17BoldText,
        ),
        Wrap(
          spacing: 5,
          children: context
              .read<RecipeFilterBloc>()
              .state
              .levels
              .mapIndexed((index, item) {
            return BlocBuilder<RecipeFilterBloc, RecipeFilterState>(
              buildWhen: (previous, current) =>
                  previous.levels[index].isChosen !=
                  current.levels[index].isChosen,
              builder: (context, state) {
                return RecipeFilterChip(
                  name: item.name.value,
                  isSelected: state.levels[index].isChosen,
                  onSelected: (isSelected) {
                    context.read<RecipeFilterBloc>().add(
                          RecipeFilterEvent.toggleLevel(
                            isSelected: isSelected,
                            index: index,
                          ),
                        );
                  },
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
