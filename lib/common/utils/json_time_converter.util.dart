import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smarthealthy/common/extensions/date_time.extension.dart';

class JsonTimeConverter implements JsonConverter<DateTime, String> {
  const JsonTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return object.formatYearMonthDay();
  }
}
