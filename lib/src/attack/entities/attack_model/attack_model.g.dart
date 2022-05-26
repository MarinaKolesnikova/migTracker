// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttackModel _$$_AttackModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AttackModel',
      json,
      ($checkedConvert) {
        final val = _$_AttackModel(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          duration: $checkedConvert(
              'duration', (v) => Duration(microseconds: v as int)),
          description: $checkedConvert('description', (v) => v as String),
          headInjuring: $checkedConvert('head_injuring', (v) => v as bool),
          noiseImpact: $checkedConvert('noise_impact', (v) => v as bool),
          alcoholConsumption:
              $checkedConvert('alcohol_consumption', (v) => v as bool),
          suffocationEffect:
              $checkedConvert('suffocation_effect ', (v) => v as bool),
          stressLevel: $checkedConvert('stress_level', (v) => v as int),
          sleapingTime: $checkedConvert('sleaping_time', (v) => v as int),
          painLevel: $checkedConvert('pain_level', (v) => v as int),
          symptoms: $checkedConvert(
              'symptoms',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Symptom.fromJson(e as Map<String, dynamic>))
                  .toList()),
          treatments: $checkedConvert(
              'treatments',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Symptom.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'headInjuring': 'head_injuring',
        'noiseImpact': 'noise_impact',
        'alcoholConsumption': 'alcohol_consumption',
        'suffocationEffect': 'suffocation_effect ',
        'stressLevel': 'stress_level',
        'sleapingTime': 'sleaping_time',
        'painLevel': 'pain_level'
      },
    );

Map<String, dynamic> _$$_AttackModelToJson(_$_AttackModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
      'description': instance.description,
      'head_injuring': instance.headInjuring,
      'noise_impact': instance.noiseImpact,
      'alcohol_consumption': instance.alcoholConsumption,
      'suffocation_effect ': instance.suffocationEffect,
      'stress_level': instance.stressLevel,
      'sleaping_time': instance.sleapingTime,
      'pain_level': instance.painLevel,
      'symptoms': instance.symptoms?.map((e) => e.toJson()).toList(),
      'treatments': instance.treatments?.map((e) => e.toJson()).toList(),
    };
