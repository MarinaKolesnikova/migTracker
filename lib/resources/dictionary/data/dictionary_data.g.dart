// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DictionaryData _$$_DictionaryDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DictionaryData',
      json,
      ($checkedConvert) {
        final val = _$_DictionaryData(
          auth: $checkedConvert('auth',
              (v) => AuthDictionary.fromJson(v as Map<String, dynamic>)),
          main: $checkedConvert('main',
              (v) => MainDictionary.fromJson(v as Map<String, dynamic>)),
          validation: $checkedConvert('validation',
              (v) => ValidationDictionary.fromJson(v as Map<String, dynamic>)),
          messages: $checkedConvert('messages',
              (v) => MessagesDictionary.fromJson(v as Map<String, dynamic>)),
          home: $checkedConvert('home',
              (v) => HomeDictionary.fromJson(v as Map<String, dynamic>)),
          calendar: $checkedConvert('calendar',
              (v) => CalendarDictionary.fromJson(v as Map<String, dynamic>)),
          advice: $checkedConvert('advices',
              (v) => AdvicesDictionary.fromJson(v as Map<String, dynamic>)),
          predictions: $checkedConvert('predictions',
              (v) => PredictionsDictionary.fromJson(v as Map<String, dynamic>)),
          settings: $checkedConvert('settings',
              (v) => SettingsDictionary.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'advice': 'advices'},
    );

Map<String, dynamic> _$$_DictionaryDataToJson(_$_DictionaryData instance) =>
    <String, dynamic>{
      'auth': instance.auth.toJson(),
      'main': instance.main.toJson(),
      'validation': instance.validation.toJson(),
      'messages': instance.messages.toJson(),
      'home': instance.home.toJson(),
      'calendar': instance.calendar.toJson(),
      'advices': instance.advice.toJson(),
      'predictions': instance.predictions.toJson(),
      'settings': instance.settings.toJson(),
    };
