import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/data/repositories/ingredient.repository.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';
import 'package:smarthealthy/presentation/search_ingredient/ingredient.dart';

class SearchIngredientPage extends StatelessWidget {
  const SearchIngredientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SearchIngredientBloc(
            ingredientRepository: getIt.get<IngredientRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => IngredientListBloc(),
        ),
      ],
      child: const _SearchIngredientView(),
    );
  }
}

class _SearchIngredientView extends StatelessWidget {
  const _SearchIngredientView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: IngredientSearchBar(),
      body: ListSearchedIngredients(),
      floatingActionButton: IngredientListFAB(),
      backgroundColor: Colors.white,
    );
  }
}
