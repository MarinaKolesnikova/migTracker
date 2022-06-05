// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prediction_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PredictionWeather _$PredictionWeatherFromJson(Map<String, dynamic> json) {
  return _PredictionWeather.fromJson(json);
}

/// @nodoc
class _$PredictionWeatherTearOff {
  const _$PredictionWeatherTearOff();

  _PredictionWeather call(
      {@JsonKey(name: 'date') required DateTime date,
      @JsonKey(name: 'prev_weather') required ShortWeatherModel prevWeather,
      @JsonKey(name: 'next_weather') required ShortWeatherModel nextWeather,
      @JsonKey(name: 'has_risk') required RiskPrediction hasRisk,
      @JsonKey(name: 'came_true') required bool? cameTrue}) {
    return _PredictionWeather(
      date: date,
      prevWeather: prevWeather,
      nextWeather: nextWeather,
      hasRisk: hasRisk,
      cameTrue: cameTrue,
    );
  }

  PredictionWeather fromJson(Map<String, Object?> json) {
    return PredictionWeather.fromJson(json);
  }
}

/// @nodoc
const $PredictionWeather = _$PredictionWeatherTearOff();

/// @nodoc
mixin _$PredictionWeather {
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_weather')
  ShortWeatherModel get prevWeather => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_weather')
  ShortWeatherModel get nextWeather => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_risk')
  RiskPrediction get hasRisk => throw _privateConstructorUsedError;
  @JsonKey(name: 'came_true')
  bool? get cameTrue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionWeatherCopyWith<PredictionWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionWeatherCopyWith<$Res> {
  factory $PredictionWeatherCopyWith(
          PredictionWeather value, $Res Function(PredictionWeather) then) =
      _$PredictionWeatherCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'prev_weather') ShortWeatherModel prevWeather,
      @JsonKey(name: 'next_weather') ShortWeatherModel nextWeather,
      @JsonKey(name: 'has_risk') RiskPrediction hasRisk,
      @JsonKey(name: 'came_true') bool? cameTrue});

  $ShortWeatherModelCopyWith<$Res> get prevWeather;
  $ShortWeatherModelCopyWith<$Res> get nextWeather;
}

/// @nodoc
class _$PredictionWeatherCopyWithImpl<$Res>
    implements $PredictionWeatherCopyWith<$Res> {
  _$PredictionWeatherCopyWithImpl(this._value, this._then);

  final PredictionWeather _value;
  // ignore: unused_field
  final $Res Function(PredictionWeather) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? prevWeather = freezed,
    Object? nextWeather = freezed,
    Object? hasRisk = freezed,
    Object? cameTrue = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      prevWeather: prevWeather == freezed
          ? _value.prevWeather
          : prevWeather // ignore: cast_nullable_to_non_nullable
              as ShortWeatherModel,
      nextWeather: nextWeather == freezed
          ? _value.nextWeather
          : nextWeather // ignore: cast_nullable_to_non_nullable
              as ShortWeatherModel,
      hasRisk: hasRisk == freezed
          ? _value.hasRisk
          : hasRisk // ignore: cast_nullable_to_non_nullable
              as RiskPrediction,
      cameTrue: cameTrue == freezed
          ? _value.cameTrue
          : cameTrue // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $ShortWeatherModelCopyWith<$Res> get prevWeather {
    return $ShortWeatherModelCopyWith<$Res>(_value.prevWeather, (value) {
      return _then(_value.copyWith(prevWeather: value));
    });
  }

  @override
  $ShortWeatherModelCopyWith<$Res> get nextWeather {
    return $ShortWeatherModelCopyWith<$Res>(_value.nextWeather, (value) {
      return _then(_value.copyWith(nextWeather: value));
    });
  }
}

/// @nodoc
abstract class _$PredictionWeatherCopyWith<$Res>
    implements $PredictionWeatherCopyWith<$Res> {
  factory _$PredictionWeatherCopyWith(
          _PredictionWeather value, $Res Function(_PredictionWeather) then) =
      __$PredictionWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'prev_weather') ShortWeatherModel prevWeather,
      @JsonKey(name: 'next_weather') ShortWeatherModel nextWeather,
      @JsonKey(name: 'has_risk') RiskPrediction hasRisk,
      @JsonKey(name: 'came_true') bool? cameTrue});

  @override
  $ShortWeatherModelCopyWith<$Res> get prevWeather;
  @override
  $ShortWeatherModelCopyWith<$Res> get nextWeather;
}

/// @nodoc
class __$PredictionWeatherCopyWithImpl<$Res>
    extends _$PredictionWeatherCopyWithImpl<$Res>
    implements _$PredictionWeatherCopyWith<$Res> {
  __$PredictionWeatherCopyWithImpl(
      _PredictionWeather _value, $Res Function(_PredictionWeather) _then)
      : super(_value, (v) => _then(v as _PredictionWeather));

  @override
  _PredictionWeather get _value => super._value as _PredictionWeather;

  @override
  $Res call({
    Object? date = freezed,
    Object? prevWeather = freezed,
    Object? nextWeather = freezed,
    Object? hasRisk = freezed,
    Object? cameTrue = freezed,
  }) {
    return _then(_PredictionWeather(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      prevWeather: prevWeather == freezed
          ? _value.prevWeather
          : prevWeather // ignore: cast_nullable_to_non_nullable
              as ShortWeatherModel,
      nextWeather: nextWeather == freezed
          ? _value.nextWeather
          : nextWeather // ignore: cast_nullable_to_non_nullable
              as ShortWeatherModel,
      hasRisk: hasRisk == freezed
          ? _value.hasRisk
          : hasRisk // ignore: cast_nullable_to_non_nullable
              as RiskPrediction,
      cameTrue: cameTrue == freezed
          ? _value.cameTrue
          : cameTrue // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_PredictionWeather extends _PredictionWeather {
  const _$_PredictionWeather(
      {@JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'prev_weather') required this.prevWeather,
      @JsonKey(name: 'next_weather') required this.nextWeather,
      @JsonKey(name: 'has_risk') required this.hasRisk,
      @JsonKey(name: 'came_true') required this.cameTrue})
      : super._();

  factory _$_PredictionWeather.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionWeatherFromJson(json);

  @override
  @JsonKey(name: 'date')
  final DateTime date;
  @override
  @JsonKey(name: 'prev_weather')
  final ShortWeatherModel prevWeather;
  @override
  @JsonKey(name: 'next_weather')
  final ShortWeatherModel nextWeather;
  @override
  @JsonKey(name: 'has_risk')
  final RiskPrediction hasRisk;
  @override
  @JsonKey(name: 'came_true')
  final bool? cameTrue;

  @override
  String toString() {
    return 'PredictionWeather(date: $date, prevWeather: $prevWeather, nextWeather: $nextWeather, hasRisk: $hasRisk, cameTrue: $cameTrue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PredictionWeather &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.prevWeather, prevWeather) &&
            const DeepCollectionEquality()
                .equals(other.nextWeather, nextWeather) &&
            const DeepCollectionEquality().equals(other.hasRisk, hasRisk) &&
            const DeepCollectionEquality().equals(other.cameTrue, cameTrue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(prevWeather),
      const DeepCollectionEquality().hash(nextWeather),
      const DeepCollectionEquality().hash(hasRisk),
      const DeepCollectionEquality().hash(cameTrue));

  @JsonKey(ignore: true)
  @override
  _$PredictionWeatherCopyWith<_PredictionWeather> get copyWith =>
      __$PredictionWeatherCopyWithImpl<_PredictionWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionWeatherToJson(this);
  }
}

abstract class _PredictionWeather extends PredictionWeather {
  const factory _PredictionWeather(
          {@JsonKey(name: 'date') required DateTime date,
          @JsonKey(name: 'prev_weather') required ShortWeatherModel prevWeather,
          @JsonKey(name: 'next_weather') required ShortWeatherModel nextWeather,
          @JsonKey(name: 'has_risk') required RiskPrediction hasRisk,
          @JsonKey(name: 'came_true') required bool? cameTrue}) =
      _$_PredictionWeather;
  const _PredictionWeather._() : super._();

  factory _PredictionWeather.fromJson(Map<String, dynamic> json) =
      _$_PredictionWeather.fromJson;

  @override
  @JsonKey(name: 'date')
  DateTime get date;
  @override
  @JsonKey(name: 'prev_weather')
  ShortWeatherModel get prevWeather;
  @override
  @JsonKey(name: 'next_weather')
  ShortWeatherModel get nextWeather;
  @override
  @JsonKey(name: 'has_risk')
  RiskPrediction get hasRisk;
  @override
  @JsonKey(name: 'came_true')
  bool? get cameTrue;
  @override
  @JsonKey(ignore: true)
  _$PredictionWeatherCopyWith<_PredictionWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
