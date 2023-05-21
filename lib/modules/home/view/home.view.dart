import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/widgets/app_icon_button.widget.dart';
import 'package:smartfood/common/widgets/common_search_field.widget.dart';
import 'package:smartfood/modules/home/bloc/home.bloc.dart';
import 'package:smartfood/modules/home/widgets/nutrition_info.widget.dart';

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
              title: const CommonSearchField(
                readOnly: true,
              ),
              actions: [
                AppIconButton(
                  onPressed: () {},
                  icon: Icons.notifications_on_outlined,
                  iconColor: ColorStyles.primary,
                ),
                const SizedBox(
                  width: AppSize.horizontalSpace,
                )
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
