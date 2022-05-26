import 'package:diplom_proj/src/attack/entities/weather_model/weather_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
class WeatherDTO with _$WeatherDTO {
  const WeatherDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory WeatherDTO({
    @JsonKey(name: 'main') required WeatherModel weather,
  }) = _WeatherDTO;
  factory WeatherDTO.fromJson(Map<String, dynamic> json) => _$WeatherDTOFromJson(json);

  factory WeatherDTO.mock() {
    return WeatherDTO(
      weather: WeatherModel.mock(),
    );
  }
}
