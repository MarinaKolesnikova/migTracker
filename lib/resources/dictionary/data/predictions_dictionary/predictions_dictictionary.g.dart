// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predictions_dictictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PredictionsDictionary _$$_PredictionsDictionaryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PredictionsDictionary',
      json,
      ($checkedConvert) {
        final val = _$_PredictionsDictionary(
          prediction: $checkedConvert('prediction', (v) => v as String),
          today: $checkedConvert('today', (v) => v as String),
          yesterday: $checkedConvert('yesterday', (v) => v as String),
          temperature: $checkedConvert('temperature', (v) => v as String),
          humidity: $checkedConvert('humidity', (v) => v as String),
          pressure: $checkedConvert('pressure', (v) => v as String),
          riskExist: $checkedConvert('risk_exist', (v) => v as String),
          increasedRiskExist:
              $checkedConvert('increased_risk_exist', (v) => v as String),
          noRisk: $checkedConvert('no_risk', (v) => v as String),
          notRelevant: $checkedConvert('not_relevant', (v) => v as String),
          relevant: $checkedConvert('relevant', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'riskExist': 'risk_exist',
        'increasedRiskExist': 'increased_risk_exist',
        'noRisk': 'no_risk',
        'notRelevant': 'not_relevant'
      },
    );

Map<String, dynamic> _$$_PredictionsDictionaryToJson(
        _$_PredictionsDictionary instance) =>
    <String, dynamic>{
      'prediction': instance.prediction,
      'today': instance.today,
      'yesterday': instance.yesterday,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'risk_exist': instance.riskExist,
      'increased_risk_exist': instance.increasedRiskExist,
      'no_risk': instance.noRisk,
      'not_relevant': instance.notRelevant,
      'relevant': instance.relevant,
    };
