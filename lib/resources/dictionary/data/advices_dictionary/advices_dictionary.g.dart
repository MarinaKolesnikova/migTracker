// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advices_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdvicesDictionary _$$_AdvicesDictionaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AdvicesDictionary',
      json,
      ($checkedConvert) {
        final val = _$_AdvicesDictionary(
          advice: $checkedConvert('advice', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_AdvicesDictionaryToJson(
        _$_AdvicesDictionary instance) =>
    <String, dynamic>{
      'advice': instance.advice,
    };
