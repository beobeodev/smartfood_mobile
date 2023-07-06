import 'package:smarthealthy/common/enums/pratice_mode.enum.dart';

class PracticeFrequencyUIModel {
  final String title;
  final PracticeMode index;
  bool isSelected;

  PracticeFrequencyUIModel({
    required this.title,
    required this.index,
    this.isSelected = false,
  });

  PracticeFrequencyUIModel copyWith({
    String? title,
    PracticeMode? index,
    bool? isSelected,
  }) {
    return PracticeFrequencyUIModel(
      title: title ?? this.title,
      index: index ?? this.index,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
