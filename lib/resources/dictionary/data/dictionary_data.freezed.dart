// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dictionary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionaryData _$DictionaryDataFromJson(Map<String, dynamic> json) {
  return _DictionaryData.fromJson(json);
}

/// @nodoc
class _$DictionaryDataTearOff {
  const _$DictionaryDataTearOff();

  _DictionaryData call(
      {@JsonKey(name: 'auth') required AuthDictionary auth,
      @JsonKey(name: 'main') required MainDictionary main,
      @JsonKey(name: 'validation') required ValidationDictionary validation}) {
    return _DictionaryData(
      auth: auth,
      main: main,
      validation: validation,
    );
  }

  DictionaryData fromJson(Map<String, Object> json) {
    return DictionaryData.fromJson(json);
  }
}

/// @nodoc
const $DictionaryData = _$DictionaryDataTearOff();

/// @nodoc
mixin _$DictionaryData {
  @JsonKey(name: 'auth')
  AuthDictionary get auth => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  MainDictionary get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'validation')
  ValidationDictionary get validation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryDataCopyWith<DictionaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryDataCopyWith<$Res> {
  factory $DictionaryDataCopyWith(
          DictionaryData value, $Res Function(DictionaryData) then) =
      _$DictionaryDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'auth') AuthDictionary auth,
      @JsonKey(name: 'main') MainDictionary main,
      @JsonKey(name: 'validation') ValidationDictionary validation});

  $AuthDictionaryCopyWith<$Res> get auth;
  $MainDictionaryCopyWith<$Res> get main;
  $ValidationDictionaryCopyWith<$Res> get validation;
}

/// @nodoc
class _$DictionaryDataCopyWithImpl<$Res>
    implements $DictionaryDataCopyWith<$Res> {
  _$DictionaryDataCopyWithImpl(this._value, this._then);

  final DictionaryData _value;
  // ignore: unused_field
  final $Res Function(DictionaryData) _then;

  @override
  $Res call({
    Object? auth = freezed,
    Object? main = freezed,
    Object? validation = freezed,
  }) {
    return _then(_value.copyWith(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthDictionary,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDictionary,
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationDictionary,
    ));
  }

  @override
  $AuthDictionaryCopyWith<$Res> get auth {
    return $AuthDictionaryCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }

  @override
  $MainDictionaryCopyWith<$Res> get main {
    return $MainDictionaryCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $ValidationDictionaryCopyWith<$Res> get validation {
    return $ValidationDictionaryCopyWith<$Res>(_value.validation, (value) {
      return _then(_value.copyWith(validation: value));
    });
  }
}

/// @nodoc
abstract class _$DictionaryDataCopyWith<$Res>
    implements $DictionaryDataCopyWith<$Res> {
  factory _$DictionaryDataCopyWith(
          _DictionaryData value, $Res Function(_DictionaryData) then) =
      __$DictionaryDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'auth') AuthDictionary auth,
      @JsonKey(name: 'main') MainDictionary main,
      @JsonKey(name: 'validation') ValidationDictionary validation});

  @override
  $AuthDictionaryCopyWith<$Res> get auth;
  @override
  $MainDictionaryCopyWith<$Res> get main;
  @override
  $ValidationDictionaryCopyWith<$Res> get validation;
}

/// @nodoc
class __$DictionaryDataCopyWithImpl<$Res>
    extends _$DictionaryDataCopyWithImpl<$Res>
    implements _$DictionaryDataCopyWith<$Res> {
  __$DictionaryDataCopyWithImpl(
      _DictionaryData _value, $Res Function(_DictionaryData) _then)
      : super(_value, (v) => _then(v as _DictionaryData));

  @override
  _DictionaryData get _value => super._value as _DictionaryData;

  @override
  $Res call({
    Object? auth = freezed,
    Object? main = freezed,
    Object? validation = freezed,
  }) {
    return _then(_DictionaryData(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthDictionary,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDictionary,
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationDictionary,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_DictionaryData implements _DictionaryData {
  const _$_DictionaryData(
      {@JsonKey(name: 'auth') required this.auth,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'validation') required this.validation});

  factory _$_DictionaryData.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionaryDataFromJson(json);

  @override
  @JsonKey(name: 'auth')
  final AuthDictionary auth;
  @override
  @JsonKey(name: 'main')
  final MainDictionary main;
  @override
  @JsonKey(name: 'validation')
  final ValidationDictionary validation;

  @override
  String toString() {
    return 'DictionaryData(auth: $auth, main: $main, validation: $validation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryData &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)) &&
            (identical(other.validation, validation) ||
                const DeepCollectionEquality()
                    .equals(other.validation, validation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(auth) ^
      const DeepCollectionEquality().hash(main) ^
      const DeepCollectionEquality().hash(validation);

  @JsonKey(ignore: true)
  @override
  _$DictionaryDataCopyWith<_DictionaryData> get copyWith =>
      __$DictionaryDataCopyWithImpl<_DictionaryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionaryDataToJson(this);
  }
}

abstract class _DictionaryData implements DictionaryData {
  const factory _DictionaryData(
      {@JsonKey(name: 'auth')
          required AuthDictionary auth,
      @JsonKey(name: 'main')
          required MainDictionary main,
      @JsonKey(name: 'validation')
          required ValidationDictionary validation}) = _$_DictionaryData;

  factory _DictionaryData.fromJson(Map<String, dynamic> json) =
      _$_DictionaryData.fromJson;

  @override
  @JsonKey(name: 'auth')
  AuthDictionary get auth => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'main')
  MainDictionary get main => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'validation')
  ValidationDictionary get validation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryDataCopyWith<_DictionaryData> get copyWith =>
      throw _privateConstructorUsedError;
}
