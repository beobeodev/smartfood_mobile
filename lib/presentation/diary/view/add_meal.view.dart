import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/enums/meal_type.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/data/dtos/add_meal.dto.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/data/repositories/meal.repository.dart';
import 'package:smarthealthy/data/repositories/recipe.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/cubit/search_meal/search_meal_cubit.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/ui_models/meal_type.model.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/add_meal_appbar.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/dish_list_section.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/add_meal/meal_selection.widget.dart';

class AddMealPage extends StatelessWidget {
  const AddMealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AddMealBloc(
            mealRepository: getIt.get<MealRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => SearchMealCubit(
            recipeRepository: getIt.get<RecipeRepository>(),
          )..getAll(),
          lazy: false,
        ),
      ],
      child: BlocListener<AddMealBloc, AddMealState>(
        listener: _listenAddMealChanged,
        child: const _AddMealView(),
      ),
    );
  }

  void _listenAddMealChanged(BuildContext context, AddMealState state) {
    DialogUtil.hideLoading(context);

    state.mapOrNull(
      loading: (_) {
        DialogUtil.showLoading(context);
      },
      success: (success) {
        context
            .read<DiaryBloc>()
            .add(DiaryEvent.addMeals(success.meals, success.type));

        Navigator.of(context).pop();
      },
      failure: (_) {
        ToastUtil.showError(context);
      },
    );
  }
}

class _AddMealView extends StatefulWidget {
  const _AddMealView();

  @override
  State<_AddMealView> createState() => _AddMealViewState();
}

class _AddMealViewState extends State<_AddMealView> {
  final ValueNotifier<List<MealModel>> _dishesNotifier = ValueNotifier([]);

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
              date: context.read<DiaryBloc>().state.currentDate,
              typeOfMeal: selectedType,
              dishes: _dishesNotifier.value,
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
