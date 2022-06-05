// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsDictionary _$$_SettingsDictionaryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SettingsDictionary',
      json,
      ($checkedConvert) {
        final val = _$_SettingsDictionary(
          settingsLabel: $checkedConvert('settings_label', (v) => v as String),
          exit: $checkedConvert('exit', (v) => v as String),
          ua: $checkedConvert('ua', (v) => v as String),
          en: $checkedConvert('en', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'settingsLabel': 'settings_label'},
    );

Map<String, dynamic> _$$_SettingsDictionaryToJson(
        _$_SettingsDictionary instance) =>
    <String, dynamic>{
      'settings_label': instance.settingsLabel,
      'exit': instance.exit,
      'ua': instance.ua,
      'en': instance.en,
      'language': instance.language,
    };
