// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttackDTO _$$_AttackDTOFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_AttackDTO',
      json,
      ($checkedConvert) {
        final val = _$_AttackDTO(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          duration: $checkedConvert(
              'duration', (v) => Duration(microseconds: v as int)),
          description: $checkedConvert('description', (v) => v as String),
          headInjuring: $checkedConvert('head_injuring', (v) => v as bool),
          noiseImpact: $checkedConvert('noise_impact', (v) => v as bool),
          suffocationEffect:
              $checkedConvert('suffocation_effect ', (v) => v as bool),
          alcoholConsumption:
              $checkedConvert('alcohol_consumption', (v) => v as bool),
          stressLevel: $checkedConvert('stress_level', (v) => v as int),
          sleapingTime: $checkedConvert('sleaping_time', (v) => v as int),
          painLevel: $checkedConvert('pain_level', (v) => v as int),
          symptoms: $checkedConvert('symptoms',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
          treatments: $checkedConvert('treatments',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'headInjuring': 'head_injuring',
        'noiseImpact': 'noise_impact',
        'suffocationEffect': 'suffocation_effect ',
        'alcoholConsumption': 'alcohol_consumption',
        'stressLevel': 'stress_level',
        'sleapingTime': 'sleaping_time',
        'painLevel': 'pain_level'
      },
    );

Map<String, dynamic> _$$_AttackDTOToJson(_$_AttackDTO instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
      'description': instance.description,
      'head_injuring': instance.headInjuring,
      'noise_impact': instance.noiseImpact,
      'suffocation_effect ': instance.suffocationEffect,
      'alcohol_consumption': instance.alcoholConsumption,
      'stress_level': instance.stressLevel,
      'sleaping_time': instance.sleapingTime,
      'pain_level': instance.painLevel,
      'symptoms': instance.symptoms,
      'treatments': instance.treatments,
    };
