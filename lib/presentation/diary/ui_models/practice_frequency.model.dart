import 'package:smarthealthy/common/enums/pratice_index.enum.dart';

class PracticeFrequencyUIModel {
  final String title;
  final PracticeIndex index;
  bool isSelected;

  PracticeFrequencyUIModel({
    required this.title,
    required this.index,
    this.isSelected = false,
  });

  PracticeFrequencyUIModel copyWith({
    String? title,
    PracticeIndex? index,
    bool? isSelected,
  }) {
    return PracticeFrequencyUIModel(
      title: title ?? this.title,
      index: index ?? this.index,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
