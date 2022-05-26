import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_dictionary.freezed.dart';

part 'month_dictionary.g.dart';

@freezed
class MonthDictionary with _$MonthDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory MonthDictionary({
    @JsonKey(name: 'jan') required String jan,
    @JsonKey(name: 'fab') required String fab,
    @JsonKey(name: 'march') required String march,
    @JsonKey(name: 'apr') required String apr,
    @JsonKey(name: 'may') required String may,
    @JsonKey(name: 'jun') required String jun,
    @JsonKey(name: 'jul') required String jul,
    @JsonKey(name: 'aug') required String aug,
    @JsonKey(name: 'sept') required String sept,
    @JsonKey(name: 'oct') required String oct,
    @JsonKey(name: 'nov') required String nov,
    @JsonKey(name: 'dec') required String dec,
  }) = _MonthDictionary;

  factory MonthDictionary.fromJson(Map<String, dynamic> json) => _$MonthDictionaryFromJson(json);
}
