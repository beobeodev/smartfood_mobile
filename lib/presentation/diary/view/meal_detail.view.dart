import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/data/models/meal.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MealDetailPage extends StatelessWidget {
  final MealModel meal;

  const MealDetailPage({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MealDetailBloc(),
      child: _DishDetailView(meal),
    );
  }
}

class _DishDetailView extends StatefulWidget {
  final MealModel meal;

  const _DishDetailView(this.meal);

  @override
  State<_DishDetailView> createState() => _DishDetailViewState();
}

class _DishDetailViewState extends State<_DishDetailView> {
  late final List<ChartData> chartData;

  @override
  void initState() {
    final meal = widget.meal;

    chartData = [
      ChartData(
        LocaleKeys.macros_protein.tr(),
        meal.totalProtein,
        ColorStyles.mediumAquamarine,
      ),
      ChartData(
        LocaleKeys.macros_carbs.tr(),
        meal.totalCarbs,
        ColorStyles.lightSkyBlue,
      ),
      ChartData(
        LocaleKeys.macros_fat.tr(),
        meal.totalFat,
        ColorStyles.brilliantLavender,
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          widget.meal.recipe.name,
          style: TextStyles.boldText.copyWith(fontSize: 18.sp),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.horizontalSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Số người ăn: ${widget.meal.totalPeople}',
              style: TextStyles.s17BoldText,
            ),
            AppSize.h20,
            Text(
              'Thành phần dinh dưỡng',
              style: TextStyles.s17BoldText,
            ),
            SizedBox(
              height: 250.h,
              child: SfCircularChart(
                annotations: <CircularChartAnnotation>[
                  CircularChartAnnotation(
                    widget: Container(
                      child: Text(
                        widget.meal.kcalString,
                        style: TextStyles.s17MediumText
                            .copyWith(color: ColorStyles.primary),
                      ),
                    ),
                  )
                ],
                margin: EdgeInsets.zero,
                legend: Legend(
                  isVisible: true,
                  // Legend will be placed at the left
                  position: LegendPosition.right,
                  textStyle: TextStyles.s17MediumText,
                  iconHeight: 20,
                ),
                series: <CircularSeries>[
                  // Renders doughnut chart
                  DoughnutSeries<ChartData, String>(
                    dataSource: chartData,
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                      textStyle:
                          TextStyles.s14BoldText.copyWith(color: Colors.white),
                    ),
                    pointColorMapper: (ChartData data, _) => data.color,
                    dataLabelMapper: (data, _) => '${data.y}g',
                    xValueMapper: (ChartData data, _) => data.title,
                    yValueMapper: (ChartData data, _) => data.y,
                  )
                ],
              ),
            ),
            AppSize.h20,
            Align(
              child: AppRoundedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRouter.recipeDetail,
                    arguments: widget.meal.recipe,
                  );
                },
                borderRadius: 1000,
                content: 'Xem chi tiết công thức nấu ăn',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.title, this.y, this.color);
  final String title;
  final int y;
  final Color color;
}
