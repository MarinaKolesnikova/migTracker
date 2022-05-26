// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastDTO _$$_ForecastDTOFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ForecastDTO',
      json,
      ($checkedConvert) {
        final val = _$_ForecastDTO(
          temp: $checkedConvert('temp',
              (v) => TemperatureDTO.fromJson(v as Map<String, dynamic>)),
          pressure: $checkedConvert('pressure', (v) => v as int),
          humidity: $checkedConvert('humidity', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ForecastDTOToJson(_$_ForecastDTO instance) =>
    <String, dynamic>{
      'temp': instance.temp.toJson(),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
