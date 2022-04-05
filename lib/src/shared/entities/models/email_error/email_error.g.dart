// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailError _$_$_EmailErrorFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_EmailError', json, () {
    final val = _$_EmailError(
      errorMessage: $checkedConvert(json, 'email',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
    );
    return val;
  }, fieldKeyMap: const {'errorMessage': 'email'});
}

Map<String, dynamic> _$_$_EmailErrorToJson(_$_EmailError instance) =>
    <String, dynamic>{
      'email': instance.errorMessage,
    };
