import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/bloc/add_meal/add_meal.bloc.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/ui_models/meal_type.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/add_meal_appbar.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/dish_list_section.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/meal_selection.widget.dart';
import 'package:smarthealthy/presentation/search_recipe/search_recipe.dart';

class AddMealPage extends StatelessWidget {
  const AddMealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AddMealBloc(),
        ),
        BlocProvider(
          create: (context) => SearchRecipeBloc(
            recipeRepository: getIt.get<RecipeRepository>(),
          )..add(const SearchRecipeEvent.getAll()),
          lazy: false,
        ),
      ],
      child: BlocListener<AddMealBloc, AddMealState>(
        listener: (context, state) {
          state.mapOrNull(
            success: (success) {
              context
                  .read<DiaryBloc>()
                  .add(DiaryEvent.addDish(success.mealDto));

              Navigator.of(context).pop();
            },
          );
        },
        child: const _AddMealView(),
      ),
    );
  }
}

class _AddMealView extends StatefulWidget {
  const _AddMealView();

  @override
  State<_AddMealView> createState() => _AddMealViewState();
}

class _AddMealViewState extends State<_AddMealView> {
  final ValueNotifier<List<RecipeModel>> _dishesNotifier = ValueNotifier([]);

  final ValueNotifier<List<MealTypeUIModel>> _mealTypeNotifier = ValueNotifier([
    MealTypeUIModel(
      name: LocaleKeys.meal_breakfast.tr(),
      isSelected: true,
      type: MealType.breakfast,
    ),
    MealTypeUIModel(
      name: LocaleKeys.meal_lunch.tr(),
      type: MealType.lunch,
    ),
    MealTypeUIModel(
      name: LocaleKeys.meal_dinner.tr(),
      type: MealType.dinner,
    )
  ]);

  @override
  void dispose() {
    _mealTypeNotifier.dispose();
    _dishesNotifier.dispose();
    super.dispose();
  }

  void _addDishes() {
    final selectedType = _mealTypeNotifier.value
        .firstWhere((element) => element.isSelected)
        .type;

    context.read<AddMealBloc>().add(
          AddMealEvent.add(
            AddMealDTO(
              type: selectedType,
              dishes: _dishesNotifier.value
                  .map((e) => e.copyWith(mealType: selectedType))
                  .toList(),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddMealAppBar(
        dishesNotifier: _dishesNotifier,
        addDishes: _addDishes,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MealSelection(mealTypeNotifier: _mealTypeNotifier),
            AppSize.h20,
            DishListSection(
              dishesNotifier: _dishesNotifier,
            ),
          ],
        ),
      ),
    );
  }
}
