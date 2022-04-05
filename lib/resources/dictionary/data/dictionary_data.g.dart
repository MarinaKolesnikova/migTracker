// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DictionaryData _$_$_DictionaryDataFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_DictionaryData', json, () {
    final val = _$_DictionaryData(
      auth: $checkedConvert(json, 'auth',
          (v) => AuthDictionary.fromJson(v as Map<String, dynamic>)),
      main: $checkedConvert(json, 'main',
          (v) => MainDictionary.fromJson(v as Map<String, dynamic>)),
      validation: $checkedConvert(json, 'validation',
          (v) => ValidationDictionary.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_DictionaryDataToJson(_$_DictionaryData instance) =>
    <String, dynamic>{
      'auth': instance.auth.toJson(),
      'main': instance.main.toJson(),
      'validation': instance.validation.toJson(),
    };
