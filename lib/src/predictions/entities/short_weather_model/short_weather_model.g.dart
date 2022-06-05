// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShortWeatherModel _$$_ShortWeatherModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ShortWeatherModel',
      json,
      ($checkedConvert) {
        final val = _$_ShortWeatherModel(
          temperature: $checkedConvert('temp', (v) => (v as num).toDouble()),
          pressure: $checkedConvert('pressure', (v) => v as int),
          humidity: $checkedConvert('humidity', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'temperature': 'temp'},
    );

Map<String, dynamic> _$$_ShortWeatherModelToJson(
        _$_ShortWeatherModel instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
