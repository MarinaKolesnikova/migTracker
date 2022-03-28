// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$_$_TokenFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Token', json, () {
    final val = _$_Token(
      accessToken: $checkedConvert(json, 'key', (v) => v as String?),
      isTest: $checkedConvert(json, 'is_test', (v) => v as bool?) ?? false,
    );
    return val;
  }, fieldKeyMap: const {'accessToken': 'key', 'isTest': 'is_test'});
}

Map<String, dynamic> _$_$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'key': instance.accessToken,
      'is_test': instance.isTest,
    };
