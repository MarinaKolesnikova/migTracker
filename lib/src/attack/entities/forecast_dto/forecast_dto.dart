import 'package:diplom_proj/src/attack/entities/temperature_dto/temperature_dto.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_dto.freezed.dart';
part 'forecast_dto.g.dart';

@freezed
class ForecastDTO with _$ForecastDTO {
  const ForecastDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ForecastDTO({
    @JsonKey(name: 'temp') required TemperatureDTO temp,
    @JsonKey(name: 'pressure') required int pressure,
    @JsonKey(name: 'humidity') required int humidity,
  }) = _ForecastDTO;
  factory ForecastDTO.fromJson(Map<String, dynamic> json) => _$ForecastDTOFromJson(json);

  factory ForecastDTO.mock() {
    return ForecastDTO(
      temp: TemperatureDTO.mock(),
      pressure: 0,
      humidity: 0,
    );
  }
}
