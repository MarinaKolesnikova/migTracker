// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailDTO _$_$_EmailDTOFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_EmailDTO', json, () {
    final val = _$_EmailDTO(
      email: $checkedConvert(json, 'email', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_EmailDTOToJson(_$_EmailDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
