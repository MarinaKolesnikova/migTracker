// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_bar_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TabBarDictionary _$_$_TabBarDictionaryFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_TabBarDictionary', json, () {
    final val = _$_TabBarDictionary(
      home: $checkedConvert(json, 'home', (v) => v as String),
      calendar: $checkedConvert(json, 'calendar', (v) => v as String),
      advices: $checkedConvert(json, 'advices', (v) => v as String),
      predictions: $checkedConvert(json, 'predictions', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_TabBarDictionaryToJson(
        _$_TabBarDictionary instance) =>
    <String, dynamic>{
      'home': instance.home,
      'calendar': instance.calendar,
      'advices': instance.advices,
      'predictions': instance.predictions,
    };
