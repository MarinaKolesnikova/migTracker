// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpDTO _$_$_SignUpDTOFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SignUpDTO', json, () {
    final val = _$_SignUpDTO(
      email: $checkedConvert(json, 'email', (v) => v as String),
      userName: $checkedConvert(json, 'userName', (v) => v as String),
      password: $checkedConvert(json, 'password', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SignUpDTOToJson(_$_SignUpDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'userName': instance.userName,
      'password': instance.password,
    };
