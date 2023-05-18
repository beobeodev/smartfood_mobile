import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/modules/home/bloc/home.bloc.dart';
import 'package:smartfood/modules/home/widgets/nutrition_info.widget.dart';
import 'package:smartfood/modules/search_ingredient/ingredient.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, _) {
          return [
            const SliverAppBar(
              title: CustomSearchBar(
                showBoxShadow: false,
              ),
              backgroundColor: Colors.white,
              snap: true,
              floating: true,
            ),
          ];
        },
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(AppSize.horizontalSpace),
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              NutritionInfo(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
