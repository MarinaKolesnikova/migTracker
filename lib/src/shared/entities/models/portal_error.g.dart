// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portal_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortalError _$_$_PortalErrorFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_PortalError', json, () {
    final val = _$_PortalError(
      errorMessage: $checkedConvert(json, 'detail', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'errorMessage': 'detail'});
}

Map<String, dynamic> _$_$_PortalErrorToJson(_$_PortalError instance) =>
    <String, dynamic>{
      'detail': instance.errorMessage,
    };
