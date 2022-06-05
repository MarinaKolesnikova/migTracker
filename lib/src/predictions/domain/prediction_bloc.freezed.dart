// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prediction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PredictionStateTearOff {
  const _$PredictionStateTearOff();

  _PredictionState call(
      {required List<PredictionWeather> predictionList,
      required PredictionWeather currentPredictions}) {
    return _PredictionState(
      predictionList: predictionList,
      currentPredictions: currentPredictions,
    );
  }
}

/// @nodoc
const $PredictionState = _$PredictionStateTearOff();

/// @nodoc
mixin _$PredictionState {
  List<PredictionWeather> get predictionList =>
      throw _privateConstructorUsedError;
  PredictionWeather get currentPredictions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PredictionStateCopyWith<PredictionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionStateCopyWith<$Res> {
  factory $PredictionStateCopyWith(
          PredictionState value, $Res Function(PredictionState) then) =
      _$PredictionStateCopyWithImpl<$Res>;
  $Res call(
      {List<PredictionWeather> predictionList,
      PredictionWeather currentPredictions});

  $PredictionWeatherCopyWith<$Res> get currentPredictions;
}

/// @nodoc
class _$PredictionStateCopyWithImpl<$Res>
    implements $PredictionStateCopyWith<$Res> {
  _$PredictionStateCopyWithImpl(this._value, this._then);

  final PredictionState _value;
  // ignore: unused_field
  final $Res Function(PredictionState) _then;

  @override
  $Res call({
    Object? predictionList = freezed,
    Object? currentPredictions = freezed,
  }) {
    return _then(_value.copyWith(
      predictionList: predictionList == freezed
          ? _value.predictionList
          : predictionList // ignore: cast_nullable_to_non_nullable
              as List<PredictionWeather>,
      currentPredictions: currentPredictions == freezed
          ? _value.currentPredictions
          : currentPredictions // ignore: cast_nullable_to_non_nullable
              as PredictionWeather,
    ));
  }

  @override
  $PredictionWeatherCopyWith<$Res> get currentPredictions {
    return $PredictionWeatherCopyWith<$Res>(_value.currentPredictions, (value) {
      return _then(_value.copyWith(currentPredictions: value));
    });
  }
}

/// @nodoc
abstract class _$PredictionStateCopyWith<$Res>
    implements $PredictionStateCopyWith<$Res> {
  factory _$PredictionStateCopyWith(
          _PredictionState value, $Res Function(_PredictionState) then) =
      __$PredictionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PredictionWeather> predictionList,
      PredictionWeather currentPredictions});

  @override
  $PredictionWeatherCopyWith<$Res> get currentPredictions;
}

/// @nodoc
class __$PredictionStateCopyWithImpl<$Res>
    extends _$PredictionStateCopyWithImpl<$Res>
    implements _$PredictionStateCopyWith<$Res> {
  __$PredictionStateCopyWithImpl(
      _PredictionState _value, $Res Function(_PredictionState) _then)
      : super(_value, (v) => _then(v as _PredictionState));

  @override
  _PredictionState get _value => super._value as _PredictionState;

  @override
  $Res call({
    Object? predictionList = freezed,
    Object? currentPredictions = freezed,
  }) {
    return _then(_PredictionState(
      predictionList: predictionList == freezed
          ? _value.predictionList
          : predictionList // ignore: cast_nullable_to_non_nullable
              as List<PredictionWeather>,
      currentPredictions: currentPredictions == freezed
          ? _value.currentPredictions
          : currentPredictions // ignore: cast_nullable_to_non_nullable
              as PredictionWeather,
    ));
  }
}

/// @nodoc

class _$_PredictionState implements _PredictionState {
  const _$_PredictionState(
      {required this.predictionList, required this.currentPredictions});

  @override
  final List<PredictionWeather> predictionList;
  @override
  final PredictionWeather currentPredictions;

  @override
  String toString() {
    return 'PredictionState(predictionList: $predictionList, currentPredictions: $currentPredictions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PredictionState &&
            const DeepCollectionEquality()
                .equals(other.predictionList, predictionList) &&
            const DeepCollectionEquality()
                .equals(other.currentPredictions, currentPredictions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(predictionList),
      const DeepCollectionEquality().hash(currentPredictions));

  @JsonKey(ignore: true)
  @override
  _$PredictionStateCopyWith<_PredictionState> get copyWith =>
      __$PredictionStateCopyWithImpl<_PredictionState>(this, _$identity);
}

abstract class _PredictionState implements PredictionState {
  const factory _PredictionState(
      {required List<PredictionWeather> predictionList,
      required PredictionWeather currentPredictions}) = _$_PredictionState;

  @override
  List<PredictionWeather> get predictionList;
  @override
  PredictionWeather get currentPredictions;
  @override
  @JsonKey(ignore: true)
  _$PredictionStateCopyWith<_PredictionState> get copyWith =>
      throw _privateConstructorUsedError;
}
