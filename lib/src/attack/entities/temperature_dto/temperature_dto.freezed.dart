// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temperature_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TemperatureDTO _$TemperatureDTOFromJson(Map<String, dynamic> json) {
  return _TemperatureDTO.fromJson(json);
}

/// @nodoc
class _$TemperatureDTOTearOff {
  const _$TemperatureDTOTearOff();

  _TemperatureDTO call(
      {@JsonKey(name: 'min') required double min,
      @JsonKey(name: 'max') required double max,
      @JsonKey(name: 'night') required double night,
      @JsonKey(name: 'eve') required double eve,
      @JsonKey(name: 'morn') required double morn}) {
    return _TemperatureDTO(
      min: min,
      max: max,
      night: night,
      eve: eve,
      morn: morn,
    );
  }

  TemperatureDTO fromJson(Map<String, Object?> json) {
    return TemperatureDTO.fromJson(json);
  }
}

/// @nodoc
const $TemperatureDTO = _$TemperatureDTOTearOff();

/// @nodoc
mixin _$TemperatureDTO {
  @JsonKey(name: 'min')
  double get min => throw _privateConstructorUsedError;
  @JsonKey(name: 'max')
  double get max => throw _privateConstructorUsedError;
  @JsonKey(name: 'night')
  double get night => throw _privateConstructorUsedError;
  @JsonKey(name: 'eve')
  double get eve => throw _privateConstructorUsedError;
  @JsonKey(name: 'morn')
  double get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureDTOCopyWith<TemperatureDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureDTOCopyWith<$Res> {
  factory $TemperatureDTOCopyWith(
          TemperatureDTO value, $Res Function(TemperatureDTO) then) =
      _$TemperatureDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'min') double min,
      @JsonKey(name: 'max') double max,
      @JsonKey(name: 'night') double night,
      @JsonKey(name: 'eve') double eve,
      @JsonKey(name: 'morn') double morn});
}

/// @nodoc
class _$TemperatureDTOCopyWithImpl<$Res>
    implements $TemperatureDTOCopyWith<$Res> {
  _$TemperatureDTOCopyWithImpl(this._value, this._then);

  final TemperatureDTO _value;
  // ignore: unused_field
  final $Res Function(TemperatureDTO) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TemperatureDTOCopyWith<$Res>
    implements $TemperatureDTOCopyWith<$Res> {
  factory _$TemperatureDTOCopyWith(
          _TemperatureDTO value, $Res Function(_TemperatureDTO) then) =
      __$TemperatureDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'min') double min,
      @JsonKey(name: 'max') double max,
      @JsonKey(name: 'night') double night,
      @JsonKey(name: 'eve') double eve,
      @JsonKey(name: 'morn') double morn});
}

/// @nodoc
class __$TemperatureDTOCopyWithImpl<$Res>
    extends _$TemperatureDTOCopyWithImpl<$Res>
    implements _$TemperatureDTOCopyWith<$Res> {
  __$TemperatureDTOCopyWithImpl(
      _TemperatureDTO _value, $Res Function(_TemperatureDTO) _then)
      : super(_value, (v) => _then(v as _TemperatureDTO));

  @override
  _TemperatureDTO get _value => super._value as _TemperatureDTO;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_TemperatureDTO(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_TemperatureDTO extends _TemperatureDTO {
  const _$_TemperatureDTO(
      {@JsonKey(name: 'min') required this.min,
      @JsonKey(name: 'max') required this.max,
      @JsonKey(name: 'night') required this.night,
      @JsonKey(name: 'eve') required this.eve,
      @JsonKey(name: 'morn') required this.morn})
      : super._();

  factory _$_TemperatureDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TemperatureDTOFromJson(json);

  @override
  @JsonKey(name: 'min')
  final double min;
  @override
  @JsonKey(name: 'max')
  final double max;
  @override
  @JsonKey(name: 'night')
  final double night;
  @override
  @JsonKey(name: 'eve')
  final double eve;
  @override
  @JsonKey(name: 'morn')
  final double morn;

  @override
  String toString() {
    return 'TemperatureDTO(min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemperatureDTO &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality().equals(other.night, night) &&
            const DeepCollectionEquality().equals(other.eve, eve) &&
            const DeepCollectionEquality().equals(other.morn, morn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(night),
      const DeepCollectionEquality().hash(eve),
      const DeepCollectionEquality().hash(morn));

  @JsonKey(ignore: true)
  @override
  _$TemperatureDTOCopyWith<_TemperatureDTO> get copyWith =>
      __$TemperatureDTOCopyWithImpl<_TemperatureDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemperatureDTOToJson(this);
  }
}

abstract class _TemperatureDTO extends TemperatureDTO {
  const factory _TemperatureDTO(
      {@JsonKey(name: 'min') required double min,
      @JsonKey(name: 'max') required double max,
      @JsonKey(name: 'night') required double night,
      @JsonKey(name: 'eve') required double eve,
      @JsonKey(name: 'morn') required double morn}) = _$_TemperatureDTO;
  const _TemperatureDTO._() : super._();

  factory _TemperatureDTO.fromJson(Map<String, dynamic> json) =
      _$_TemperatureDTO.fromJson;

  @override
  @JsonKey(name: 'min')
  double get min;
  @override
  @JsonKey(name: 'max')
  double get max;
  @override
  @JsonKey(name: 'night')
  double get night;
  @override
  @JsonKey(name: 'eve')
  double get eve;
  @override
  @JsonKey(name: 'morn')
  double get morn;
  @override
  @JsonKey(ignore: true)
  _$TemperatureDTOCopyWith<_TemperatureDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
