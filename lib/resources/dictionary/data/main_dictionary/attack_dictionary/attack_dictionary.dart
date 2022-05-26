import 'package:freezed_annotation/freezed_annotation.dart';

part 'attack_dictionary.freezed.dart';

part 'attack_dictionary.g.dart';

@freezed
class AttackDictionary with _$AttackDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AttackDictionary({
    @JsonKey(name: 'symptoms') required String symptoms,
    @JsonKey(name: 'treatments') required String treatments,
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'time') required String time,
    @JsonKey(name: 'duration') required String duration,
    @JsonKey(name: 'pain_level') required String painLevel,
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'attack_note') required String attackNote,
    @JsonKey(name: 'stress_level') required String stressLevel,
    @JsonKey(name: 'hours_of_sleep') required String hoursOfSleep,
    @JsonKey(name: 'weather_conditions') required String weatherConditions,
    @JsonKey(name: 'conditions') required String conditions,
    @JsonKey(name: 'tap_to_choose') required String tapToChoose,
    @JsonKey(name: 'temperature') required String temperature,
    @JsonKey(name: 'humidity') required String humidity,
    @JsonKey(name: 'pressure') required String pressure,
    @JsonKey(name: 'next') required String next,
    @JsonKey(name: 'head_injuring') required String headInjuring,
    @JsonKey(name: 'alcohol_consumption') required String alcoholConsumption,
    @JsonKey(name: 'noise_impact') required String noiseImpact,
    @JsonKey(name: 'autofill') required String autofill,
    @JsonKey(name: 'suffocation_effect') required String suffocationEffect,
    @JsonKey(name: 'submit') required String submit,
    @JsonKey(name: 'stop') required String stop,
    @JsonKey(name: 'edit') required String edit,
  }) = _AttackDictionary;

  factory AttackDictionary.fromJson(Map<String, dynamic> json) => _$AttackDictionaryFromJson(json);
}
