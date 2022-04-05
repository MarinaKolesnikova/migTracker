// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialTokenDTO _$_$_SocialTokenDTOFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SocialTokenDTO', json, () {
    final val = _$_SocialTokenDTO(
      accessToken: $checkedConvert(json, 'access_token', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'accessToken': 'access_token'});
}

Map<String, dynamic> _$_$_SocialTokenDTOToJson(_$_SocialTokenDTO instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
    };
