// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'short_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortWeatherModel _$ShortWeatherModelFromJson(Map<String, dynamic> json) {
  return _ShortWeatherModel.fromJson(json);
}

/// @nodoc
class _$ShortWeatherModelTearOff {
  const _$ShortWeatherModelTearOff();

  _ShortWeatherModel call(
      {@JsonKey(name: 'temp') required double temperature,
      @JsonKey(name: 'pressure') required int pressure,
      @JsonKey(name: 'humidity') required int humidity}) {
    return _ShortWeatherModel(
      temperature: temperature,
      pressure: pressure,
      humidity: humidity,
    );
  }

  ShortWeatherModel fromJson(Map<String, Object?> json) {
    return ShortWeatherModel.fromJson(json);
  }
}

/// @nodoc
const $ShortWeatherModel = _$ShortWeatherModelTearOff();

/// @nodoc
mixin _$ShortWeatherModel {
  @JsonKey(name: 'temp')
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure')
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortWeatherModelCopyWith<ShortWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortWeatherModelCopyWith<$Res> {
  factory $ShortWeatherModelCopyWith(
          ShortWeatherModel value, $Res Function(ShortWeatherModel) then) =
      _$ShortWeatherModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity});
}

/// @nodoc
class _$ShortWeatherModelCopyWithImpl<$Res>
    implements $ShortWeatherModelCopyWith<$Res> {
  _$ShortWeatherModelCopyWithImpl(this._value, this._then);

  final ShortWeatherModel _value;
  // ignore: unused_field
  final $Res Function(ShortWeatherModel) _then;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ShortWeatherModelCopyWith<$Res>
    implements $ShortWeatherModelCopyWith<$Res> {
  factory _$ShortWeatherModelCopyWith(
          _ShortWeatherModel value, $Res Function(_ShortWeatherModel) then) =
      __$ShortWeatherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity});
}

/// @nodoc
class __$ShortWeatherModelCopyWithImpl<$Res>
    extends _$ShortWeatherModelCopyWithImpl<$Res>
    implements _$ShortWeatherModelCopyWith<$Res> {
  __$ShortWeatherModelCopyWithImpl(
      _ShortWeatherModel _value, $Res Function(_ShortWeatherModel) _then)
      : super(_value, (v) => _then(v as _ShortWeatherModel));

  @override
  _ShortWeatherModel get _value => super._value as _ShortWeatherModel;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_ShortWeatherModel(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_ShortWeatherModel extends _ShortWeatherModel {
  const _$_ShortWeatherModel(
      {@JsonKey(name: 'temp') required this.temperature,
      @JsonKey(name: 'pressure') required this.pressure,
      @JsonKey(name: 'humidity') required this.humidity})
      : super._();

  factory _$_ShortWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShortWeatherModelFromJson(json);

  @override
  @JsonKey(name: 'temp')
  final double temperature;
  @override
  @JsonKey(name: 'pressure')
  final int pressure;
  @override
  @JsonKey(name: 'humidity')
  final int humidity;

  @override
  String toString() {
    return 'ShortWeatherModel(temperature: $temperature, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortWeatherModel &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity));

  @JsonKey(ignore: true)
  @override
  _$ShortWeatherModelCopyWith<_ShortWeatherModel> get copyWith =>
      __$ShortWeatherModelCopyWithImpl<_ShortWeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortWeatherModelToJson(this);
  }
}

abstract class _ShortWeatherModel extends ShortWeatherModel {
  const factory _ShortWeatherModel(
      {@JsonKey(name: 'temp') required double temperature,
      @JsonKey(name: 'pressure') required int pressure,
      @JsonKey(name: 'humidity') required int humidity}) = _$_ShortWeatherModel;
  const _ShortWeatherModel._() : super._();

  factory _ShortWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_ShortWeatherModel.fromJson;

  @override
  @JsonKey(name: 'temp')
  double get temperature;
  @override
  @JsonKey(name: 'pressure')
  int get pressure;
  @override
  @JsonKey(name: 'humidity')
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$ShortWeatherModelCopyWith<_ShortWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
