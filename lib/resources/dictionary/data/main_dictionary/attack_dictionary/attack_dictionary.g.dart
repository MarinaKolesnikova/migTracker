// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttackDictionary _$$_AttackDictionaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AttackDictionary',
      json,
      ($checkedConvert) {
        final val = _$_AttackDictionary(
          symptoms: $checkedConvert('symptoms', (v) => v as String),
          treatments: $checkedConvert('treatments', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          time: $checkedConvert('time', (v) => v as String),
          duration: $checkedConvert('duration', (v) => v as String),
          painLevel: $checkedConvert('pain_level', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          attackNote: $checkedConvert('attack_note', (v) => v as String),
          stressLevel: $checkedConvert('stress_level', (v) => v as String),
          hoursOfSleep: $checkedConvert('hours_of_sleep', (v) => v as String),
          weatherConditions:
              $checkedConvert('weather_conditions', (v) => v as String),
          conditions: $checkedConvert('conditions', (v) => v as String),
          tapToChoose: $checkedConvert('tap_to_choose', (v) => v as String),
          temperature: $checkedConvert('temperature', (v) => v as String),
          humidity: $checkedConvert('humidity', (v) => v as String),
          pressure: $checkedConvert('pressure', (v) => v as String),
          next: $checkedConvert('next', (v) => v as String),
          headInjuring: $checkedConvert('head_injuring', (v) => v as String),
          alcoholConsumption:
              $checkedConvert('alcohol_consumption', (v) => v as String),
          noiseImpact: $checkedConvert('noise_impact', (v) => v as String),
          autofill: $checkedConvert('autofill', (v) => v as String),
          suffocationEffect:
              $checkedConvert('suffocation_effect', (v) => v as String),
          submit: $checkedConvert('submit', (v) => v as String),
          stop: $checkedConvert('stop', (v) => v as String),
          edit: $checkedConvert('edit', (v) => v as String),
          start: $checkedConvert('start', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'painLevel': 'pain_level',
        'attackNote': 'attack_note',
        'stressLevel': 'stress_level',
        'hoursOfSleep': 'hours_of_sleep',
        'weatherConditions': 'weather_conditions',
        'tapToChoose': 'tap_to_choose',
        'headInjuring': 'head_injuring',
        'alcoholConsumption': 'alcohol_consumption',
        'noiseImpact': 'noise_impact',
        'suffocationEffect': 'suffocation_effect'
      },
    );

Map<String, dynamic> _$$_AttackDictionaryToJson(_$_AttackDictionary instance) =>
    <String, dynamic>{
      'symptoms': instance.symptoms,
      'treatments': instance.treatments,
      'date': instance.date,
      'time': instance.time,
      'duration': instance.duration,
      'pain_level': instance.painLevel,
      'location': instance.location,
      'attack_note': instance.attackNote,
      'stress_level': instance.stressLevel,
      'hours_of_sleep': instance.hoursOfSleep,
      'weather_conditions': instance.weatherConditions,
      'conditions': instance.conditions,
      'tap_to_choose': instance.tapToChoose,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'next': instance.next,
      'head_injuring': instance.headInjuring,
      'alcohol_consumption': instance.alcoholConsumption,
      'noise_impact': instance.noiseImpact,
      'autofill': instance.autofill,
      'suffocation_effect': instance.suffocationEffect,
      'submit': instance.submit,
      'stop': instance.stop,
      'edit': instance.edit,
      'start': instance.start,
    };
