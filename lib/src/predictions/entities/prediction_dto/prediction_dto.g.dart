// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PredictionDto _$$_PredictionDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PredictionDto',
      json,
      ($checkedConvert) {
        final val = _$_PredictionDto(
          userId: $checkedConvert('user_id', (v) => v as String),
          predictionList: $checkedConvert(
              'predictions',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PredictionWeather.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'userId': 'user_id', 'predictionList': 'predictions'},
    );

Map<String, dynamic> _$$_PredictionDtoToJson(_$_PredictionDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'predictions': instance.predictionList.map((e) => e.toJson()).toList(),
    };
