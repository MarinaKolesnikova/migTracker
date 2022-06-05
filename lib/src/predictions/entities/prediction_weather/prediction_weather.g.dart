// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PredictionWeather _$$_PredictionWeatherFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PredictionWeather',
      json,
      ($checkedConvert) {
        final val = _$_PredictionWeather(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          prevWeather: $checkedConvert('prev_weather',
              (v) => ShortWeatherModel.fromJson(v as Map<String, dynamic>)),
          nextWeather: $checkedConvert('next_weather',
              (v) => ShortWeatherModel.fromJson(v as Map<String, dynamic>)),
          hasRisk: $checkedConvert(
              'has_risk', (v) => $enumDecode(_$RiskPredictionEnumMap, v)),
          cameTrue: $checkedConvert('came_true', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'prevWeather': 'prev_weather',
        'nextWeather': 'next_weather',
        'hasRisk': 'has_risk',
        'cameTrue': 'came_true'
      },
    );

Map<String, dynamic> _$$_PredictionWeatherToJson(
        _$_PredictionWeather instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'prev_weather': instance.prevWeather.toJson(),
      'next_weather': instance.nextWeather.toJson(),
      'has_risk': _$RiskPredictionEnumMap[instance.hasRisk],
      'came_true': instance.cameTrue,
    };

const _$RiskPredictionEnumMap = {
  RiskPrediction.noRisk: 'noRisk',
  RiskPrediction.risk: 'risk',
  RiskPrediction.increasedRisk: 'increasedRisk',
};
