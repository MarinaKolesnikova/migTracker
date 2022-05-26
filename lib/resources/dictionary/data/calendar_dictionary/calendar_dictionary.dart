import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_dictionary.freezed.dart';

part 'calendar_dictionary.g.dart';

@freezed
class CalendarDictionary with _$CalendarDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory CalendarDictionary({
    @JsonKey(name: 'calendar_label') required String calendarLabel,
    @JsonKey(name: 'attacks') required String attacks,
    @JsonKey(name: 'today') required String today,
  }) = _CalendarDictionary;

  factory CalendarDictionary.fromJson(Map<String, dynamic> json) => _$CalendarDictionaryFromJson(json);
}
