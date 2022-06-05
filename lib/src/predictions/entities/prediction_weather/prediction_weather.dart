import 'package:diplom_proj/src/predictions/entities/short_weather_model/short_weather_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_weather.freezed.dart';
part 'prediction_weather.g.dart';

enum RiskPrediction {
  noRisk,
  risk,
  increasedRisk,
}

@freezed
class PredictionWeather with _$PredictionWeather {
  const PredictionWeather._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory PredictionWeather({
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'prev_weather') required ShortWeatherModel prevWeather,
    @JsonKey(name: 'next_weather') required ShortWeatherModel nextWeather,
    @JsonKey(name: 'has_risk') required RiskPrediction hasRisk,
    @JsonKey(name: 'came_true') required bool? cameTrue,
  }) = _PredictionWeather;
  factory PredictionWeather.fromJson(Map<String, dynamic> json) => _$PredictionWeatherFromJson(json);

  factory PredictionWeather.mock() {
    return PredictionWeather(
      date: DateTime.now(),
      prevWeather: ShortWeatherModel.mock(),
      nextWeather: ShortWeatherModel(
        humidity: 68,
        temperature: 27,
        pressure: 700,
      ),
      cameTrue: true,
      hasRisk: RiskPrediction.noRisk,
    );
  }
}
