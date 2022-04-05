// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDTO _$_$_LoginDTOFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LoginDTO', json, () {
    final val = _$_LoginDTO(
      email: $checkedConvert(json, 'email', (v) => v as String),
      password: $checkedConvert(json, 'password', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LoginDTOToJson(_$_LoginDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
