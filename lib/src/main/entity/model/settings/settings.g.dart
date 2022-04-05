// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$_$_SettingsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Settings', json, () {
    final val = _$_Settings(
      language: $checkedConvert(json, 'language', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'language': instance.language,
    };
