import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_weather_model.freezed.dart';
part 'short_weather_model.g.dart';

@freezed
class ShortWeatherModel with _$ShortWeatherModel {
  const ShortWeatherModel._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ShortWeatherModel({
    @JsonKey(name: 'temp') required double temperature,
    @JsonKey(name: 'pressure') required int pressure,
    @JsonKey(name: 'humidity') required int humidity,
  }) = _ShortWeatherModel;
  factory ShortWeatherModel.fromJson(Map<String, dynamic> json) => _$ShortWeatherModelFromJson(json);

  factory ShortWeatherModel.mock() {
    return ShortWeatherModel(
      temperature: 25.0,
      pressure: 690,
      humidity: 70,
    );
  }
}
