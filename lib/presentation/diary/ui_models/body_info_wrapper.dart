import 'package:smarthealthy/common/enums/gender_type.enum.dart';

class BodyInfoWrapper {
  final GenderType gender;
  final int weight;
  final double height;
  final int age;
  final double practiceIndex;

  BodyInfoWrapper({
    required this.gender,
    required this.weight,
    required this.height,
    required this.age,
    required this.practiceIndex,
  });
}
