// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDTO.fromJson(json);
}

/// @nodoc
class _$WeatherDTOTearOff {
  const _$WeatherDTOTearOff();

  _WeatherDTO call({@JsonKey(name: 'main') required WeatherModel weather}) {
    return _WeatherDTO(
      weather: weather,
    );
  }

  WeatherDTO fromJson(Map<String, Object?> json) {
    return WeatherDTO.fromJson(json);
  }
}

/// @nodoc
const $WeatherDTO = _$WeatherDTOTearOff();

/// @nodoc
mixin _$WeatherDTO {
  @JsonKey(name: 'main')
  WeatherModel get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDTOCopyWith<WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDTOCopyWith<$Res> {
  factory $WeatherDTOCopyWith(
          WeatherDTO value, $Res Function(WeatherDTO) then) =
      _$WeatherDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'main') WeatherModel weather});

  $WeatherModelCopyWith<$Res> get weather;
}

/// @nodoc
class _$WeatherDTOCopyWithImpl<$Res> implements $WeatherDTOCopyWith<$Res> {
  _$WeatherDTOCopyWithImpl(this._value, this._then);

  final WeatherDTO _value;
  // ignore: unused_field
  final $Res Function(WeatherDTO) _then;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
    ));
  }

  @override
  $WeatherModelCopyWith<$Res> get weather {
    return $WeatherModelCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherDTOCopyWith<$Res> implements $WeatherDTOCopyWith<$Res> {
  factory _$WeatherDTOCopyWith(
          _WeatherDTO value, $Res Function(_WeatherDTO) then) =
      __$WeatherDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'main') WeatherModel weather});

  @override
  $WeatherModelCopyWith<$Res> get weather;
}

/// @nodoc
class __$WeatherDTOCopyWithImpl<$Res> extends _$WeatherDTOCopyWithImpl<$Res>
    implements _$WeatherDTOCopyWith<$Res> {
  __$WeatherDTOCopyWithImpl(
      _WeatherDTO _value, $Res Function(_WeatherDTO) _then)
      : super(_value, (v) => _then(v as _WeatherDTO));

  @override
  _WeatherDTO get _value => super._value as _WeatherDTO;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_WeatherDTO(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_WeatherDTO extends _WeatherDTO {
  const _$_WeatherDTO({@JsonKey(name: 'main') required this.weather})
      : super._();

  factory _$_WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDTOFromJson(json);

  @override
  @JsonKey(name: 'main')
  final WeatherModel weather;

  @override
  String toString() {
    return 'WeatherDTO(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherDTO &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$WeatherDTOCopyWith<_WeatherDTO> get copyWith =>
      __$WeatherDTOCopyWithImpl<_WeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDTOToJson(this);
  }
}

abstract class _WeatherDTO extends WeatherDTO {
  const factory _WeatherDTO(
      {@JsonKey(name: 'main') required WeatherModel weather}) = _$_WeatherDTO;
  const _WeatherDTO._() : super._();

  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherDTO.fromJson;

  @override
  @JsonKey(name: 'main')
  WeatherModel get weather;
  @override
  @JsonKey(ignore: true)
  _$WeatherDTOCopyWith<_WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
