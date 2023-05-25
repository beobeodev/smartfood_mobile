import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/presentation/core/widgets/app_bottom_navigation_bar.widget.dart';
import 'package:smarthealthy/presentation/core/widgets/custom_lazy_indexed_stack.widget.dart';
import 'package:smarthealthy/presentation/favorite/favorite.dart';
import 'package:smarthealthy/presentation/home/home.dart';
import 'package:smarthealthy/presentation/search_ingredient/ingredient.dart';
import 'package:smarthealthy/presentation/profile/profile.dart';
import 'package:smarthealthy/presentation/core/core.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RootBloc(),
      child: const _RootView(),
    );
  }
}

class _RootView extends StatelessWidget {
  const _RootView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RootBloc, RootState>(
        builder: (
          context,
          state,
        ) {
          return SlideIndexedStack(
            index: state.currentIndex,
            children: const [
              HomePage(),
              SearchIngredientPage(),
              FavoritePage(),
              ProfilePage()
            ],
          );
        },
        buildWhen: (previous, current) {
          return previous.currentIndex != current.currentIndex;
        },
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
