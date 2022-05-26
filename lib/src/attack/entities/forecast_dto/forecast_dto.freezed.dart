// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDTO _$ForecastDTOFromJson(Map<String, dynamic> json) {
  return _ForecastDTO.fromJson(json);
}

/// @nodoc
class _$ForecastDTOTearOff {
  const _$ForecastDTOTearOff();

  _ForecastDTO call(
      {@JsonKey(name: 'temp') required TemperatureDTO temp,
      @JsonKey(name: 'pressure') required int pressure,
      @JsonKey(name: 'humidity') required int humidity}) {
    return _ForecastDTO(
      temp: temp,
      pressure: pressure,
      humidity: humidity,
    );
  }

  ForecastDTO fromJson(Map<String, Object?> json) {
    return ForecastDTO.fromJson(json);
  }
}

/// @nodoc
const $ForecastDTO = _$ForecastDTOTearOff();

/// @nodoc
mixin _$ForecastDTO {
  @JsonKey(name: 'temp')
  TemperatureDTO get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure')
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDTOCopyWith<ForecastDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDTOCopyWith<$Res> {
  factory $ForecastDTOCopyWith(
          ForecastDTO value, $Res Function(ForecastDTO) then) =
      _$ForecastDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'temp') TemperatureDTO temp,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity});

  $TemperatureDTOCopyWith<$Res> get temp;
}

/// @nodoc
class _$ForecastDTOCopyWithImpl<$Res> implements $ForecastDTOCopyWith<$Res> {
  _$ForecastDTOCopyWithImpl(this._value, this._then);

  final ForecastDTO _value;
  // ignore: unused_field
  final $Res Function(ForecastDTO) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TemperatureDTO,
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

  @override
  $TemperatureDTOCopyWith<$Res> get temp {
    return $TemperatureDTOCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastDTOCopyWith<$Res>
    implements $ForecastDTOCopyWith<$Res> {
  factory _$ForecastDTOCopyWith(
          _ForecastDTO value, $Res Function(_ForecastDTO) then) =
      __$ForecastDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'temp') TemperatureDTO temp,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity});

  @override
  $TemperatureDTOCopyWith<$Res> get temp;
}

/// @nodoc
class __$ForecastDTOCopyWithImpl<$Res> extends _$ForecastDTOCopyWithImpl<$Res>
    implements _$ForecastDTOCopyWith<$Res> {
  __$ForecastDTOCopyWithImpl(
      _ForecastDTO _value, $Res Function(_ForecastDTO) _then)
      : super(_value, (v) => _then(v as _ForecastDTO));

  @override
  _ForecastDTO get _value => super._value as _ForecastDTO;

  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_ForecastDTO(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TemperatureDTO,
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
class _$_ForecastDTO extends _ForecastDTO {
  const _$_ForecastDTO(
      {@JsonKey(name: 'temp') required this.temp,
      @JsonKey(name: 'pressure') required this.pressure,
      @JsonKey(name: 'humidity') required this.humidity})
      : super._();

  factory _$_ForecastDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastDTOFromJson(json);

  @override
  @JsonKey(name: 'temp')
  final TemperatureDTO temp;
  @override
  @JsonKey(name: 'pressure')
  final int pressure;
  @override
  @JsonKey(name: 'humidity')
  final int humidity;

  @override
  String toString() {
    return 'ForecastDTO(temp: $temp, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForecastDTO &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity));

  @JsonKey(ignore: true)
  @override
  _$ForecastDTOCopyWith<_ForecastDTO> get copyWith =>
      __$ForecastDTOCopyWithImpl<_ForecastDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastDTOToJson(this);
  }
}

abstract class _ForecastDTO extends ForecastDTO {
  const factory _ForecastDTO(
      {@JsonKey(name: 'temp') required TemperatureDTO temp,
      @JsonKey(name: 'pressure') required int pressure,
      @JsonKey(name: 'humidity') required int humidity}) = _$_ForecastDTO;
  const _ForecastDTO._() : super._();

  factory _ForecastDTO.fromJson(Map<String, dynamic> json) =
      _$_ForecastDTO.fromJson;

  @override
  @JsonKey(name: 'temp')
  TemperatureDTO get temp;
  @override
  @JsonKey(name: 'pressure')
  int get pressure;
  @override
  @JsonKey(name: 'humidity')
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$ForecastDTOCopyWith<_ForecastDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
