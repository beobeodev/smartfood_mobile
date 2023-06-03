import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_step.model.freezed.dart';
part 'recipe_step.model.g.dart';

@Freezed(toJson: false)
class RecipeStepModel with _$RecipeStepModel {
  factory RecipeStepModel({
    required final String id,
    required final String content,
    required final int order,
  }) = _RecipeStepModel;

  factory RecipeStepModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeStepModelFromJson(json);
}
