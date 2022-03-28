// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDTO _$_$_AuthDTOFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_AuthDTO', json, () {
    final val = _$_AuthDTO(
      id: $checkedConvert(json, 'id', (v) => v as int),
      userName: $checkedConvert(json, 'userName', (v) => v as String),
      email: $checkedConvert(json, 'email', (v) => v as String),
      token: $checkedConvert(json, 'key', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'token': 'key'});
}

Map<String, dynamic> _$_$_AuthDTOToJson(_$_AuthDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'key': instance.token,
    };
