import 'package:diplom_proj/src/attack/entities/weather_model/weather_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_dto.freezed.dart';
part 'temperature_dto.g.dart';

@freezed
class TemperatureDTO with _$TemperatureDTO {
  const TemperatureDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory TemperatureDTO({
    @JsonKey(name: 'min') required double min,
    @JsonKey(name: 'max') required double max,
    @JsonKey(name: 'night') required double night,
    @JsonKey(name: 'eve') required double eve,
    @JsonKey(name: 'morn') required double morn,
  }) = _TemperatureDTO;
  factory TemperatureDTO.fromJson(Map<String, dynamic> json) => _$TemperatureDTOFromJson(json);

  factory TemperatureDTO.mock() {
    return TemperatureDTO(
      min: 0.0,
      eve: 0.0,
      morn: 0.0,
      night: 0.0,
      max: 0.0,
    );
  }
}
