import 'package:freezed_annotation/freezed_annotation.dart';

part 'predictions_dictictionary.freezed.dart';

part 'predictions_dictictionary.g.dart';

@freezed
class PredictionsDictionary with _$PredictionsDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory PredictionsDictionary({
    @JsonKey(name: 'prediction') required String prediction,
    @JsonKey(name: 'today') required String today,
    @JsonKey(name: 'yesterday') required String yesterday,
    @JsonKey(name: 'temperature') required String temperature,
    @JsonKey(name: 'humidity') required String humidity,
    @JsonKey(name: 'pressure') required String pressure,
    @JsonKey(name: 'risk_exist') required String riskExist,
    @JsonKey(name: 'increased_risk_exist') required String increasedRiskExist,
    @JsonKey(name: 'no_risk') required String noRisk,
    @JsonKey(name: 'not_relevant') required String notRelevant,
    @JsonKey(name: 'relevant') required String relevant,
  }) = _PredictionsDictionary;

  factory PredictionsDictionary.fromJson(Map<String, dynamic> json) => _$PredictionsDictionaryFromJson(json);
}
