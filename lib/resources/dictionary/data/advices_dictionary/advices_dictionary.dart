import 'package:freezed_annotation/freezed_annotation.dart';

part 'advices_dictionary.freezed.dart';

part 'advices_dictionary.g.dart';

@freezed
class AdvicesDictionary with _$AdvicesDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AdvicesDictionary({
    @JsonKey(name: 'advice') required String advice,
  }) = _AdvicesDictionary;

  factory AdvicesDictionary.fromJson(Map<String, dynamic> json) => _$AdvicesDictionaryFromJson(json);
}
