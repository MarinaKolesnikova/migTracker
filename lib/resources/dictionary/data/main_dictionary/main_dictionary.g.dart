// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDictionary _$_$_MainDictionaryFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_MainDictionary', json, () {
    final val = _$_MainDictionary(
      tabBarDictionary: $checkedConvert(json, 'tab_bar',
          (v) => TabBarDictionary.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {'tabBarDictionary': 'tab_bar'});
}

Map<String, dynamic> _$_$_MainDictionaryToJson(_$_MainDictionary instance) =>
    <String, dynamic>{
      'tab_bar': instance.tabBarDictionary.toJson(),
    };
