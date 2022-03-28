// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDictionary _$_$_AuthDictionaryFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_AuthDictionary', json, () {
    final val = _$_AuthDictionary(
      login: $checkedConvert(json, 'log_in', (v) => v as String),
      loginWith: $checkedConvert(json, 'log_in_with', (v) => v as String),
      signUp: $checkedConvert(json, 'sign_up', (v) => v as String),
      signUpWith: $checkedConvert(json, 'sign_up_with', (v) => v as String),
      userName: $checkedConvert(json, 'user_name', (v) => v as String),
      password: $checkedConvert(json, 'password', (v) => v as String),
      confirmPassword:
          $checkedConvert(json, 'confirm_password', (v) => v as String),
      enter: $checkedConvert(json, 'enter', (v) => v as String),
      email: $checkedConvert(json, 'email', (v) => v as String),
      send: $checkedConvert(json, 'send', (v) => v as String),
      ok: $checkedConvert(json, 'ok', (v) => v as String),
      linkWasSend: $checkedConvert(json, 'link_was_send', (v) => v as String),
      linkWouldBeSend:
          $checkedConvert(json, 'link_would_be_send', (v) => v as String),
      mandatoryFields:
          $checkedConvert(json, 'mandatory_fields', (v) => v as String),
      recovery: $checkedConvert(json, 'recovery', (v) => v as String),
      recoveryLabel:
          $checkedConvert(json, 'recovery_label', (v) => v as String),
      socialNetworks:
          $checkedConvert(json, 'social_networks', (v) => v as String),
      google: $checkedConvert(json, 'google', (v) => v as String),
      facebook: $checkedConvert(json, 'facebook', (v) => v as String),
      apple: $checkedConvert(json, 'apple', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'login': 'log_in',
    'loginWith': 'log_in_with',
    'signUp': 'sign_up',
    'signUpWith': 'sign_up_with',
    'userName': 'user_name',
    'confirmPassword': 'confirm_password',
    'linkWasSend': 'link_was_send',
    'linkWouldBeSend': 'link_would_be_send',
    'mandatoryFields': 'mandatory_fields',
    'recoveryLabel': 'recovery_label',
    'socialNetworks': 'social_networks'
  });
}

Map<String, dynamic> _$_$_AuthDictionaryToJson(_$_AuthDictionary instance) =>
    <String, dynamic>{
      'log_in': instance.login,
      'log_in_with': instance.loginWith,
      'sign_up': instance.signUp,
      'sign_up_with': instance.signUpWith,
      'user_name': instance.userName,
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'enter': instance.enter,
      'email': instance.email,
      'send': instance.send,
      'ok': instance.ok,
      'link_was_send': instance.linkWasSend,
      'link_would_be_send': instance.linkWouldBeSend,
      'mandatory_fields': instance.mandatoryFields,
      'recovery': instance.recovery,
      'recovery_label': instance.recoveryLabel,
      'social_networks': instance.socialNetworks,
      'google': instance.google,
      'facebook': instance.facebook,
      'apple': instance.apple,
    };
