import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/constants/enums/query_status.enum.dart';
import 'package:smarthealthy/common/helpers/ingredient_detector.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/common/widgets/common_error.widget.dart';
import 'package:smarthealthy/common/widgets/loading_dot.widget.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/search_ingredient/bloc/ingredient_detection/ingredient_detection.bloc.dart';
import 'package:smarthealthy/presentation/search_ingredient/widgets/ingredient_detection/detection_body.widget.dart';

class IngredientDetectionPage extends StatelessWidget {
  final List<String> imagePaths;

  const IngredientDetectionPage({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => IngredientDetectionBloc(
        ingredientDetector: getIt.get<IngredientDetector>(),
      )..add(IngredientDetectionEvent.started(imagePaths)),
      child: _IngredientDetectionView(imagePaths),
    );
  }
}

class _IngredientDetectionView extends StatelessWidget {
  final List<String> imagePaths;

  const _IngredientDetectionView(this.imagePaths);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: LocaleKeys.texts_ingredient_detection.tr(),
      ),
      body: BlocBuilder<IngredientDetectionBloc, IngredientDetectionState>(
        builder: (context, state) {
          return switch (state.status) {
            QueryStatus.loading => const LoadingDot(),
            QueryStatus.success => DetectionBody(
                imagePaths: imagePaths,
                result: state.recognitionResult,
              ),
            QueryStatus.error => const CommonError(),
          };
        },
      ),
    );
  }
}
