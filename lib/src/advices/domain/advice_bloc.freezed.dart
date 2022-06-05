// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'advice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdviceStateTearOff {
  const _$AdviceStateTearOff();

  _AdviceState call({required List<AdviceDTO> adviceDto}) {
    return _AdviceState(
      adviceDto: adviceDto,
    );
  }
}

/// @nodoc
const $AdviceState = _$AdviceStateTearOff();

/// @nodoc
mixin _$AdviceState {
  List<AdviceDTO> get adviceDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdviceStateCopyWith<AdviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdviceStateCopyWith<$Res> {
  factory $AdviceStateCopyWith(
          AdviceState value, $Res Function(AdviceState) then) =
      _$AdviceStateCopyWithImpl<$Res>;
  $Res call({List<AdviceDTO> adviceDto});
}

/// @nodoc
class _$AdviceStateCopyWithImpl<$Res> implements $AdviceStateCopyWith<$Res> {
  _$AdviceStateCopyWithImpl(this._value, this._then);

  final AdviceState _value;
  // ignore: unused_field
  final $Res Function(AdviceState) _then;

  @override
  $Res call({
    Object? adviceDto = freezed,
  }) {
    return _then(_value.copyWith(
      adviceDto: adviceDto == freezed
          ? _value.adviceDto
          : adviceDto // ignore: cast_nullable_to_non_nullable
              as List<AdviceDTO>,
    ));
  }
}

/// @nodoc
abstract class _$AdviceStateCopyWith<$Res>
    implements $AdviceStateCopyWith<$Res> {
  factory _$AdviceStateCopyWith(
          _AdviceState value, $Res Function(_AdviceState) then) =
      __$AdviceStateCopyWithImpl<$Res>;
  @override
  $Res call({List<AdviceDTO> adviceDto});
}

/// @nodoc
class __$AdviceStateCopyWithImpl<$Res> extends _$AdviceStateCopyWithImpl<$Res>
    implements _$AdviceStateCopyWith<$Res> {
  __$AdviceStateCopyWithImpl(
      _AdviceState _value, $Res Function(_AdviceState) _then)
      : super(_value, (v) => _then(v as _AdviceState));

  @override
  _AdviceState get _value => super._value as _AdviceState;

  @override
  $Res call({
    Object? adviceDto = freezed,
  }) {
    return _then(_AdviceState(
      adviceDto: adviceDto == freezed
          ? _value.adviceDto
          : adviceDto // ignore: cast_nullable_to_non_nullable
              as List<AdviceDTO>,
    ));
  }
}

/// @nodoc

class _$_AdviceState implements _AdviceState {
  const _$_AdviceState({required this.adviceDto});

  @override
  final List<AdviceDTO> adviceDto;

  @override
  String toString() {
    return 'AdviceState(adviceDto: $adviceDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdviceState &&
            const DeepCollectionEquality().equals(other.adviceDto, adviceDto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adviceDto));

  @JsonKey(ignore: true)
  @override
  _$AdviceStateCopyWith<_AdviceState> get copyWith =>
      __$AdviceStateCopyWithImpl<_AdviceState>(this, _$identity);
}

abstract class _AdviceState implements AdviceState {
  const factory _AdviceState({required List<AdviceDTO> adviceDto}) =
      _$_AdviceState;

  @override
  List<AdviceDTO> get adviceDto;
  @override
  @JsonKey(ignore: true)
  _$AdviceStateCopyWith<_AdviceState> get copyWith =>
      throw _privateConstructorUsedError;
}
