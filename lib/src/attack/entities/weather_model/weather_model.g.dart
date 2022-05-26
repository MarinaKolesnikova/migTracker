// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WeatherModel',
      json,
      ($checkedConvert) {
        final val = _$_WeatherModel(
          temperature: $checkedConvert('temp', (v) => (v as num).toDouble()),
          feelsLike:
              $checkedConvert('feels_like', (v) => (v as num).toDouble()),
          tempMin: $checkedConvert('temp_min', (v) => (v as num).toDouble()),
          tempMax: $checkedConvert('temp_max', (v) => (v as num).toDouble()),
          pressure: $checkedConvert('pressure', (v) => v as int),
          humidity: $checkedConvert('humidity', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'temperature': 'temp',
        'feelsLike': 'feels_like',
        'tempMin': 'temp_min',
        'tempMax': 'temp_max'
      },
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
