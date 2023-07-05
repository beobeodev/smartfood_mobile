import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/data/models/recipe.model.dart';
import 'package:smarthealthy/presentation/diary/bloc/dish_detail/dish_detail.bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DishDetailPage extends StatelessWidget {
  final RecipeModel recipe;

  const DishDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DishDetailBloc(),
      child: _DishDetailView(recipe),
    );
  }
}

class _DishDetailView extends StatelessWidget {
  final RecipeModel recipe;

  const _DishDetailView(this.recipe);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, const Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Steve', 38, const Color.fromRGBO(147, 0, 119, 1)),
      ChartData('Jack', 59, const Color.fromRGBO(228, 0, 124, 1)),
      ChartData('Others', 52, const Color.fromRGBO(255, 189, 57, 1))
    ];

    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          recipe.name,
          style: TextStyles.boldText.copyWith(fontSize: 18.sp),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.horizontalSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Thành phần dinh dưỡng',
              style: TextStyles.s17BoldText,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 250.h,
                  child: SfCircularChart(
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
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                        pointColorMapper: (ChartData data, _) => data.color,
                        sortingOrder: SortingOrder.ascending,
                        sortFieldValueMapper: (ChartData data, _) => data.title,
                        xValueMapper: (ChartData data, _) => data.title,
                        yValueMapper: (ChartData data, _) => data.y,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 230.h / 2,
                  left: 96,
                  child: const Text('440 kcal'),
                )
              ],
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
  final double y;
  final Color color;
}
