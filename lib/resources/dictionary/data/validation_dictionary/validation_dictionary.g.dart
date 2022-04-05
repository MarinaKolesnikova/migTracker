// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ValidationDictionary _$_$_ValidationDictionaryFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_ValidationDictionary', json, () {
    final val = _$_ValidationDictionary(
      emailValidationError:
          $checkedConvert(json, 'wrong_email_format', (v) => v as String),
      cyrillicOnly: $checkedConvert(json, 'cyrillic_only', (v) => v as String),
      numbersOnly: $checkedConvert(json, 'numbers_only', (v) => v as String),
      wrongPhoneFormat:
          $checkedConvert(json, 'wrong_phone_format', (v) => v as String),
      passwordsNotEqual:
          $checkedConvert(json, 'passwords_not_equal', (v) => v as String),
      wrongPasswordFormat:
          $checkedConvert(json, 'wrong_password_format', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'emailValidationError': 'wrong_email_format',
    'cyrillicOnly': 'cyrillic_only',
    'numbersOnly': 'numbers_only',
    'wrongPhoneFormat': 'wrong_phone_format',
    'passwordsNotEqual': 'passwords_not_equal',
    'wrongPasswordFormat': 'wrong_password_format'
  });
}

Map<String, dynamic> _$_$_ValidationDictionaryToJson(
        _$_ValidationDictionary instance) =>
    <String, dynamic>{
      'wrong_email_format': instance.emailValidationError,
      'cyrillic_only': instance.cyrillicOnly,
      'numbers_only': instance.numbersOnly,
      'wrong_phone_format': instance.wrongPhoneFormat,
      'passwords_not_equal': instance.passwordsNotEqual,
      'wrong_password_format': instance.wrongPasswordFormat,
    };
