// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prediction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PredictionDto _$PredictionDtoFromJson(Map<String, dynamic> json) {
  return _PredictionDto.fromJson(json);
}

/// @nodoc
class _$PredictionDtoTearOff {
  const _$PredictionDtoTearOff();

  _PredictionDto call(
      {@JsonKey(name: 'user_id')
          required String userId,
      @JsonKey(name: 'predictions')
          required List<PredictionWeather> predictionList}) {
    return _PredictionDto(
      userId: userId,
      predictionList: predictionList,
    );
  }

  PredictionDto fromJson(Map<String, Object?> json) {
    return PredictionDto.fromJson(json);
  }
}

/// @nodoc
const $PredictionDto = _$PredictionDtoTearOff();

/// @nodoc
mixin _$PredictionDto {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'predictions')
  List<PredictionWeather> get predictionList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionDtoCopyWith<PredictionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionDtoCopyWith<$Res> {
  factory $PredictionDtoCopyWith(
          PredictionDto value, $Res Function(PredictionDto) then) =
      _$PredictionDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'predictions') List<PredictionWeather> predictionList});
}

/// @nodoc
class _$PredictionDtoCopyWithImpl<$Res>
    implements $PredictionDtoCopyWith<$Res> {
  _$PredictionDtoCopyWithImpl(this._value, this._then);

  final PredictionDto _value;
  // ignore: unused_field
  final $Res Function(PredictionDto) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? predictionList = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      predictionList: predictionList == freezed
          ? _value.predictionList
          : predictionList // ignore: cast_nullable_to_non_nullable
              as List<PredictionWeather>,
    ));
  }
}

/// @nodoc
abstract class _$PredictionDtoCopyWith<$Res>
    implements $PredictionDtoCopyWith<$Res> {
  factory _$PredictionDtoCopyWith(
          _PredictionDto value, $Res Function(_PredictionDto) then) =
      __$PredictionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'predictions') List<PredictionWeather> predictionList});
}

/// @nodoc
class __$PredictionDtoCopyWithImpl<$Res>
    extends _$PredictionDtoCopyWithImpl<$Res>
    implements _$PredictionDtoCopyWith<$Res> {
  __$PredictionDtoCopyWithImpl(
      _PredictionDto _value, $Res Function(_PredictionDto) _then)
      : super(_value, (v) => _then(v as _PredictionDto));

  @override
  _PredictionDto get _value => super._value as _PredictionDto;

  @override
  $Res call({
    Object? userId = freezed,
    Object? predictionList = freezed,
  }) {
    return _then(_PredictionDto(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      predictionList: predictionList == freezed
          ? _value.predictionList
          : predictionList // ignore: cast_nullable_to_non_nullable
              as List<PredictionWeather>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_PredictionDto extends _PredictionDto {
  const _$_PredictionDto(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'predictions') required this.predictionList})
      : super._();

  factory _$_PredictionDto.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionDtoFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'predictions')
  final List<PredictionWeather> predictionList;

  @override
  String toString() {
    return 'PredictionDto(userId: $userId, predictionList: $predictionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PredictionDto &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.predictionList, predictionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(predictionList));

  @JsonKey(ignore: true)
  @override
  _$PredictionDtoCopyWith<_PredictionDto> get copyWith =>
      __$PredictionDtoCopyWithImpl<_PredictionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionDtoToJson(this);
  }
}

abstract class _PredictionDto extends PredictionDto {
  const factory _PredictionDto(
      {@JsonKey(name: 'user_id')
          required String userId,
      @JsonKey(name: 'predictions')
          required List<PredictionWeather> predictionList}) = _$_PredictionDto;
  const _PredictionDto._() : super._();

  factory _PredictionDto.fromJson(Map<String, dynamic> json) =
      _$_PredictionDto.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'predictions')
  List<PredictionWeather> get predictionList;
  @override
  @JsonKey(ignore: true)
  _$PredictionDtoCopyWith<_PredictionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
