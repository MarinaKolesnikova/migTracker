// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsDictionary _$SettingsDictionaryFromJson(Map<String, dynamic> json) {
  return _SettingsDictionary.fromJson(json);
}

/// @nodoc
class _$SettingsDictionaryTearOff {
  const _$SettingsDictionaryTearOff();

  _SettingsDictionary call(
      {@JsonKey(name: 'settings_label') required String settingsLabel,
      @JsonKey(name: 'exit') required String exit,
      @JsonKey(name: 'ua') required String ua,
      @JsonKey(name: 'en') required String en,
      @JsonKey(name: 'language') required String language}) {
    return _SettingsDictionary(
      settingsLabel: settingsLabel,
      exit: exit,
      ua: ua,
      en: en,
      language: language,
    );
  }

  SettingsDictionary fromJson(Map<String, Object?> json) {
    return SettingsDictionary.fromJson(json);
  }
}

/// @nodoc
const $SettingsDictionary = _$SettingsDictionaryTearOff();

/// @nodoc
mixin _$SettingsDictionary {
  @JsonKey(name: 'settings_label')
  String get settingsLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'exit')
  String get exit => throw _privateConstructorUsedError;
  @JsonKey(name: 'ua')
  String get ua => throw _privateConstructorUsedError;
  @JsonKey(name: 'en')
  String get en => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsDictionaryCopyWith<SettingsDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDictionaryCopyWith<$Res> {
  factory $SettingsDictionaryCopyWith(
          SettingsDictionary value, $Res Function(SettingsDictionary) then) =
      _$SettingsDictionaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'settings_label') String settingsLabel,
      @JsonKey(name: 'exit') String exit,
      @JsonKey(name: 'ua') String ua,
      @JsonKey(name: 'en') String en,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class _$SettingsDictionaryCopyWithImpl<$Res>
    implements $SettingsDictionaryCopyWith<$Res> {
  _$SettingsDictionaryCopyWithImpl(this._value, this._then);

  final SettingsDictionary _value;
  // ignore: unused_field
  final $Res Function(SettingsDictionary) _then;

  @override
  $Res call({
    Object? settingsLabel = freezed,
    Object? exit = freezed,
    Object? ua = freezed,
    Object? en = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      settingsLabel: settingsLabel == freezed
          ? _value.settingsLabel
          : settingsLabel // ignore: cast_nullable_to_non_nullable
              as String,
      exit: exit == freezed
          ? _value.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as String,
      ua: ua == freezed
          ? _value.ua
          : ua // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SettingsDictionaryCopyWith<$Res>
    implements $SettingsDictionaryCopyWith<$Res> {
  factory _$SettingsDictionaryCopyWith(
          _SettingsDictionary value, $Res Function(_SettingsDictionary) then) =
      __$SettingsDictionaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'settings_label') String settingsLabel,
      @JsonKey(name: 'exit') String exit,
      @JsonKey(name: 'ua') String ua,
      @JsonKey(name: 'en') String en,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class __$SettingsDictionaryCopyWithImpl<$Res>
    extends _$SettingsDictionaryCopyWithImpl<$Res>
    implements _$SettingsDictionaryCopyWith<$Res> {
  __$SettingsDictionaryCopyWithImpl(
      _SettingsDictionary _value, $Res Function(_SettingsDictionary) _then)
      : super(_value, (v) => _then(v as _SettingsDictionary));

  @override
  _SettingsDictionary get _value => super._value as _SettingsDictionary;

  @override
  $Res call({
    Object? settingsLabel = freezed,
    Object? exit = freezed,
    Object? ua = freezed,
    Object? en = freezed,
    Object? language = freezed,
  }) {
    return _then(_SettingsDictionary(
      settingsLabel: settingsLabel == freezed
          ? _value.settingsLabel
          : settingsLabel // ignore: cast_nullable_to_non_nullable
              as String,
      exit: exit == freezed
          ? _value.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as String,
      ua: ua == freezed
          ? _value.ua
          : ua // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_SettingsDictionary implements _SettingsDictionary {
  const _$_SettingsDictionary(
      {@JsonKey(name: 'settings_label') required this.settingsLabel,
      @JsonKey(name: 'exit') required this.exit,
      @JsonKey(name: 'ua') required this.ua,
      @JsonKey(name: 'en') required this.en,
      @JsonKey(name: 'language') required this.language});

  factory _$_SettingsDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsDictionaryFromJson(json);

  @override
  @JsonKey(name: 'settings_label')
  final String settingsLabel;
  @override
  @JsonKey(name: 'exit')
  final String exit;
  @override
  @JsonKey(name: 'ua')
  final String ua;
  @override
  @JsonKey(name: 'en')
  final String en;
  @override
  @JsonKey(name: 'language')
  final String language;

  @override
  String toString() {
    return 'SettingsDictionary(settingsLabel: $settingsLabel, exit: $exit, ua: $ua, en: $en, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsDictionary &&
            const DeepCollectionEquality()
                .equals(other.settingsLabel, settingsLabel) &&
            const DeepCollectionEquality().equals(other.exit, exit) &&
            const DeepCollectionEquality().equals(other.ua, ua) &&
            const DeepCollectionEquality().equals(other.en, en) &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(settingsLabel),
      const DeepCollectionEquality().hash(exit),
      const DeepCollectionEquality().hash(ua),
      const DeepCollectionEquality().hash(en),
      const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$SettingsDictionaryCopyWith<_SettingsDictionary> get copyWith =>
      __$SettingsDictionaryCopyWithImpl<_SettingsDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsDictionaryToJson(this);
  }
}

abstract class _SettingsDictionary implements SettingsDictionary {
  const factory _SettingsDictionary(
          {@JsonKey(name: 'settings_label') required String settingsLabel,
          @JsonKey(name: 'exit') required String exit,
          @JsonKey(name: 'ua') required String ua,
          @JsonKey(name: 'en') required String en,
          @JsonKey(name: 'language') required String language}) =
      _$_SettingsDictionary;

  factory _SettingsDictionary.fromJson(Map<String, dynamic> json) =
      _$_SettingsDictionary.fromJson;

  @override
  @JsonKey(name: 'settings_label')
  String get settingsLabel;
  @override
  @JsonKey(name: 'exit')
  String get exit;
  @override
  @JsonKey(name: 'ua')
  String get ua;
  @override
  @JsonKey(name: 'en')
  String get en;
  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(ignore: true)
  _$SettingsDictionaryCopyWith<_SettingsDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
