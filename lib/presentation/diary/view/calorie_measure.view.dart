import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/enums/pratice_index.enum.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/utils/toast.util.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/bloc/calorie_measure/calorie_measure.bloc.dart';
import 'package:smarthealthy/presentation/diary/ui_models/body_info_wrapper.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/body_info_page.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/practice_frequency_page.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/calorie_measure/row_page_button.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class CalorieMeasurePage extends StatelessWidget {
  const CalorieMeasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalorieMeasureBloc(),
      child: BlocListener<CalorieMeasureBloc, CalorieMeasureState>(
        listener: _listenBlocChanged,
        child: const _CalorieMeasureView(),
      ),
    );
  }

  void _listenBlocChanged(BuildContext context, CalorieMeasureState state) {
    state.maybeMap(
      loading: (_) => DialogUtil.showLoading(context),
      failure: (_) => ToastUtil.showError(context),
      success: (success) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          AppRouter.measureResult,
          ModalRoute.withName(AppRouter.root),
          arguments: success.nutrition,
        );
      },
      orElse: () => DialogUtil.hideLoading(context),
    );
  }
}

class _CalorieMeasureView extends StatefulWidget {
  const _CalorieMeasureView();

  @override
  State<_CalorieMeasureView> createState() => _CalorieMeasureViewState();
}

class _CalorieMeasureViewState extends State<_CalorieMeasureView> {
  final ValueNotifier<int> _weightNotifier = ValueNotifier(50);
  final ValueNotifier<bool> _genderNotifier = ValueNotifier(false);
  final ValueNotifier<int> _ageNotifier = ValueNotifier(22);
  final ValueNotifier<int> _pageNotifier = ValueNotifier(0);

  final PageController _pageController = PageController();

  double _height = 170;
  double _practiceIndex = PracticeIndex.rare.value;

  @override
  void dispose() {
    _weightNotifier.dispose();
    super.dispose();
  }

  void _calculateCalorie() {
    context.read<CalorieMeasureBloc>().add(
          CalorieMeasureEvent.calculateNutrition(
            BodyInfoWrapper(
              gender: _genderNotifier.value,
              weight: _weightNotifier.value,
              height: _height,
              age: _ageNotifier.value,
              practiceIndex: _practiceIndex,
            ),
          ),
        );
  }

  void _setPracticeIndex(double value) {
    _practiceIndex = value;
  }

  void _navigatePage(bool isPreviousPage) {
    const duration = Duration(milliseconds: 300);
    const curve = Curves.linear;
    if (isPreviousPage) {
      _pageController.previousPage(duration: duration, curve: curve);
    } else {
      if (_pageController.page! > 0) {
        _calculateCalorie();
      } else {
        _pageController.nextPage(duration: duration, curve: curve);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.horizontalSpacing,
              ),
              child: Text(
                LocaleKeys.measure_introduction.tr(),
                style: TextStyles.regularText.copyWith(fontSize: 20.sp),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (value) {
                  _pageNotifier.value = value;
                },
                children: [
                  BodyInfoPage(
                    genderNotifier: _genderNotifier,
                    height: _height,
                    onHeightChanged: (value) => _height = value,
                    weightNotifier: _weightNotifier,
                    ageNotifier: _ageNotifier,
                  ),
                  PracticeFrequencyPage(
                    setPracticeIndex: _setPracticeIndex,
                  )
                ],
              ),
            ),
            RowPageButton(
              pageNotifier: _pageNotifier,
              navigatePage: _navigatePage,
            )
          ],
        ),
      ),
    );
  }
}
