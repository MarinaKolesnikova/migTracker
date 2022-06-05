import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_dictionary.freezed.dart';

part 'settings_dictionary.g.dart';

@freezed
class SettingsDictionary with _$SettingsDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory SettingsDictionary({
    @JsonKey(name: 'settings_label') required String settingsLabel,
    @JsonKey(name: 'exit') required String exit,
    @JsonKey(name: 'ua') required String ua,
    @JsonKey(name: 'en') required String en,
    @JsonKey(name: 'language') required String language,
  }) = _SettingsDictionary;

  factory SettingsDictionary.fromJson(Map<String, dynamic> json) => _$SettingsDictionaryFromJson(json);
}
