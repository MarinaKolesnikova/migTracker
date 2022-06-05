// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'advices_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvicesDictionary _$AdvicesDictionaryFromJson(Map<String, dynamic> json) {
  return _AdvicesDictionary.fromJson(json);
}

/// @nodoc
class _$AdvicesDictionaryTearOff {
  const _$AdvicesDictionaryTearOff();

  _AdvicesDictionary call({@JsonKey(name: 'advice') required String advice}) {
    return _AdvicesDictionary(
      advice: advice,
    );
  }

  AdvicesDictionary fromJson(Map<String, Object?> json) {
    return AdvicesDictionary.fromJson(json);
  }
}

/// @nodoc
const $AdvicesDictionary = _$AdvicesDictionaryTearOff();

/// @nodoc
mixin _$AdvicesDictionary {
  @JsonKey(name: 'advice')
  String get advice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvicesDictionaryCopyWith<AdvicesDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvicesDictionaryCopyWith<$Res> {
  factory $AdvicesDictionaryCopyWith(
          AdvicesDictionary value, $Res Function(AdvicesDictionary) then) =
      _$AdvicesDictionaryCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'advice') String advice});
}

/// @nodoc
class _$AdvicesDictionaryCopyWithImpl<$Res>
    implements $AdvicesDictionaryCopyWith<$Res> {
  _$AdvicesDictionaryCopyWithImpl(this._value, this._then);

  final AdvicesDictionary _value;
  // ignore: unused_field
  final $Res Function(AdvicesDictionary) _then;

  @override
  $Res call({
    Object? advice = freezed,
  }) {
    return _then(_value.copyWith(
      advice: advice == freezed
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AdvicesDictionaryCopyWith<$Res>
    implements $AdvicesDictionaryCopyWith<$Res> {
  factory _$AdvicesDictionaryCopyWith(
          _AdvicesDictionary value, $Res Function(_AdvicesDictionary) then) =
      __$AdvicesDictionaryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'advice') String advice});
}

/// @nodoc
class __$AdvicesDictionaryCopyWithImpl<$Res>
    extends _$AdvicesDictionaryCopyWithImpl<$Res>
    implements _$AdvicesDictionaryCopyWith<$Res> {
  __$AdvicesDictionaryCopyWithImpl(
      _AdvicesDictionary _value, $Res Function(_AdvicesDictionary) _then)
      : super(_value, (v) => _then(v as _AdvicesDictionary));

  @override
  _AdvicesDictionary get _value => super._value as _AdvicesDictionary;

  @override
  $Res call({
    Object? advice = freezed,
  }) {
    return _then(_AdvicesDictionary(
      advice: advice == freezed
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_AdvicesDictionary implements _AdvicesDictionary {
  const _$_AdvicesDictionary({@JsonKey(name: 'advice') required this.advice});

  factory _$_AdvicesDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_AdvicesDictionaryFromJson(json);

  @override
  @JsonKey(name: 'advice')
  final String advice;

  @override
  String toString() {
    return 'AdvicesDictionary(advice: $advice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvicesDictionary &&
            const DeepCollectionEquality().equals(other.advice, advice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(advice));

  @JsonKey(ignore: true)
  @override
  _$AdvicesDictionaryCopyWith<_AdvicesDictionary> get copyWith =>
      __$AdvicesDictionaryCopyWithImpl<_AdvicesDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvicesDictionaryToJson(this);
  }
}

abstract class _AdvicesDictionary implements AdvicesDictionary {
  const factory _AdvicesDictionary(
      {@JsonKey(name: 'advice') required String advice}) = _$_AdvicesDictionary;

  factory _AdvicesDictionary.fromJson(Map<String, dynamic> json) =
      _$_AdvicesDictionary.fromJson;

  @override
  @JsonKey(name: 'advice')
  String get advice;
  @override
  @JsonKey(ignore: true)
  _$AdvicesDictionaryCopyWith<_AdvicesDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
