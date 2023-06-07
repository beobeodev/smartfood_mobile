import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/app_icon_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_search_field.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/home/bloc/home.bloc.dart';
import 'package:smarthealthy/presentation/home/widgets/nutrition_info.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

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
            SliverAppBar(
              title: CommonSearchField(
                readOnly: true,
                hintText: LocaleKeys.search_recipe.tr(),
                onTap: () => Navigator.of(context).pushNamed(
                  AppRouter.recipeList,
                  arguments: null,
                ),
              ),
              actions: [
                AppIconButton(
                  onPressed: () {},
                  icon: Icons.notifications_on_outlined,
                  iconColor: ColorStyles.primary,
                ),
                AppSize.w20
              ],
              backgroundColor: Colors.white,
              snap: true,
              floating: true,
              elevation: 0.1,
              forceElevated: true,
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
