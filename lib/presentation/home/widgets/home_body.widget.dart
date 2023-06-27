import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/presentation/home/widgets/nutrition_info.widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(AppSize.horizontalSpacing),
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          NutritionInfo(),
          AppSize.h20,
        ],
      ),
    );
  }
}
