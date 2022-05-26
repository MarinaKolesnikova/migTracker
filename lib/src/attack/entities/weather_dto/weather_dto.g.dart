// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDTO _$$_WeatherDTOFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_WeatherDTO',
      json,
      ($checkedConvert) {
        final val = _$_WeatherDTO(
          weather: $checkedConvert(
              'main', (v) => WeatherModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'weather': 'main'},
    );

Map<String, dynamic> _$$_WeatherDTOToJson(_$_WeatherDTO instance) =>
    <String, dynamic>{
      'main': instance.weather.toJson(),
    };
