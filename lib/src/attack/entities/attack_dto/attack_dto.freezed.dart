// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attack_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttackDTO _$AttackDTOFromJson(Map<String, dynamic> json) {
  return _AttackDTO.fromJson(json);
}

/// @nodoc
class _$AttackDTOTearOff {
  const _$AttackDTOTearOff();

  _AttackDTO call(
      {@JsonKey(name: 'date') required DateTime date,
      @JsonKey(name: 'duration') required Duration duration,
      @JsonKey(name: 'description') required String description,
      @JsonKey(name: 'head_injuring') required bool headInjuring,
      @JsonKey(name: 'noise_impact') required bool noiseImpact,
      @JsonKey(name: 'suffocation_effect ') required bool suffocationEffect,
      @JsonKey(name: 'alcohol_consumption') required bool alcoholConsumption,
      @JsonKey(name: 'stress_level') required int stressLevel,
      @JsonKey(name: 'sleaping_time') required int sleapingTime,
      @JsonKey(name: 'pain_level') required int painLevel,
      @JsonKey(name: 'symptoms') List<int>? symptoms,
      @JsonKey(name: 'treatments') List<int>? treatments}) {
    return _AttackDTO(
      date: date,
      duration: duration,
      description: description,
      headInjuring: headInjuring,
      noiseImpact: noiseImpact,
      suffocationEffect: suffocationEffect,
      alcoholConsumption: alcoholConsumption,
      stressLevel: stressLevel,
      sleapingTime: sleapingTime,
      painLevel: painLevel,
      symptoms: symptoms,
      treatments: treatments,
    );
  }

  AttackDTO fromJson(Map<String, Object?> json) {
    return AttackDTO.fromJson(json);
  }
}

/// @nodoc
const $AttackDTO = _$AttackDTOTearOff();

/// @nodoc
mixin _$AttackDTO {
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  Duration get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_injuring')
  bool get headInjuring => throw _privateConstructorUsedError;
  @JsonKey(name: 'noise_impact')
  bool get noiseImpact => throw _privateConstructorUsedError;
  @JsonKey(name: 'suffocation_effect ')
  bool get suffocationEffect => throw _privateConstructorUsedError;
  @JsonKey(name: 'alcohol_consumption')
  bool get alcoholConsumption => throw _privateConstructorUsedError;
  @JsonKey(name: 'stress_level')
  int get stressLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleaping_time')
  int get sleapingTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'pain_level')
  int get painLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'symptoms')
  List<int>? get symptoms => throw _privateConstructorUsedError;
  @JsonKey(name: 'treatments')
  List<int>? get treatments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackDTOCopyWith<AttackDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackDTOCopyWith<$Res> {
  factory $AttackDTOCopyWith(AttackDTO value, $Res Function(AttackDTO) then) =
      _$AttackDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'duration') Duration duration,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'head_injuring') bool headInjuring,
      @JsonKey(name: 'noise_impact') bool noiseImpact,
      @JsonKey(name: 'suffocation_effect ') bool suffocationEffect,
      @JsonKey(name: 'alcohol_consumption') bool alcoholConsumption,
      @JsonKey(name: 'stress_level') int stressLevel,
      @JsonKey(name: 'sleaping_time') int sleapingTime,
      @JsonKey(name: 'pain_level') int painLevel,
      @JsonKey(name: 'symptoms') List<int>? symptoms,
      @JsonKey(name: 'treatments') List<int>? treatments});
}

/// @nodoc
class _$AttackDTOCopyWithImpl<$Res> implements $AttackDTOCopyWith<$Res> {
  _$AttackDTOCopyWithImpl(this._value, this._then);

  final AttackDTO _value;
  // ignore: unused_field
  final $Res Function(AttackDTO) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? headInjuring = freezed,
    Object? noiseImpact = freezed,
    Object? suffocationEffect = freezed,
    Object? alcoholConsumption = freezed,
    Object? stressLevel = freezed,
    Object? sleapingTime = freezed,
    Object? painLevel = freezed,
    Object? symptoms = freezed,
    Object? treatments = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      headInjuring: headInjuring == freezed
          ? _value.headInjuring
          : headInjuring // ignore: cast_nullable_to_non_nullable
              as bool,
      noiseImpact: noiseImpact == freezed
          ? _value.noiseImpact
          : noiseImpact // ignore: cast_nullable_to_non_nullable
              as bool,
      suffocationEffect: suffocationEffect == freezed
          ? _value.suffocationEffect
          : suffocationEffect // ignore: cast_nullable_to_non_nullable
              as bool,
      alcoholConsumption: alcoholConsumption == freezed
          ? _value.alcoholConsumption
          : alcoholConsumption // ignore: cast_nullable_to_non_nullable
              as bool,
      stressLevel: stressLevel == freezed
          ? _value.stressLevel
          : stressLevel // ignore: cast_nullable_to_non_nullable
              as int,
      sleapingTime: sleapingTime == freezed
          ? _value.sleapingTime
          : sleapingTime // ignore: cast_nullable_to_non_nullable
              as int,
      painLevel: painLevel == freezed
          ? _value.painLevel
          : painLevel // ignore: cast_nullable_to_non_nullable
              as int,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      treatments: treatments == freezed
          ? _value.treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$AttackDTOCopyWith<$Res> implements $AttackDTOCopyWith<$Res> {
  factory _$AttackDTOCopyWith(
          _AttackDTO value, $Res Function(_AttackDTO) then) =
      __$AttackDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'duration') Duration duration,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'head_injuring') bool headInjuring,
      @JsonKey(name: 'noise_impact') bool noiseImpact,
      @JsonKey(name: 'suffocation_effect ') bool suffocationEffect,
      @JsonKey(name: 'alcohol_consumption') bool alcoholConsumption,
      @JsonKey(name: 'stress_level') int stressLevel,
      @JsonKey(name: 'sleaping_time') int sleapingTime,
      @JsonKey(name: 'pain_level') int painLevel,
      @JsonKey(name: 'symptoms') List<int>? symptoms,
      @JsonKey(name: 'treatments') List<int>? treatments});
}

/// @nodoc
class __$AttackDTOCopyWithImpl<$Res> extends _$AttackDTOCopyWithImpl<$Res>
    implements _$AttackDTOCopyWith<$Res> {
  __$AttackDTOCopyWithImpl(_AttackDTO _value, $Res Function(_AttackDTO) _then)
      : super(_value, (v) => _then(v as _AttackDTO));

  @override
  _AttackDTO get _value => super._value as _AttackDTO;

  @override
  $Res call({
    Object? date = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? headInjuring = freezed,
    Object? noiseImpact = freezed,
    Object? suffocationEffect = freezed,
    Object? alcoholConsumption = freezed,
    Object? stressLevel = freezed,
    Object? sleapingTime = freezed,
    Object? painLevel = freezed,
    Object? symptoms = freezed,
    Object? treatments = freezed,
  }) {
    return _then(_AttackDTO(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      headInjuring: headInjuring == freezed
          ? _value.headInjuring
          : headInjuring // ignore: cast_nullable_to_non_nullable
              as bool,
      noiseImpact: noiseImpact == freezed
          ? _value.noiseImpact
          : noiseImpact // ignore: cast_nullable_to_non_nullable
              as bool,
      suffocationEffect: suffocationEffect == freezed
          ? _value.suffocationEffect
          : suffocationEffect // ignore: cast_nullable_to_non_nullable
              as bool,
      alcoholConsumption: alcoholConsumption == freezed
          ? _value.alcoholConsumption
          : alcoholConsumption // ignore: cast_nullable_to_non_nullable
              as bool,
      stressLevel: stressLevel == freezed
          ? _value.stressLevel
          : stressLevel // ignore: cast_nullable_to_non_nullable
              as int,
      sleapingTime: sleapingTime == freezed
          ? _value.sleapingTime
          : sleapingTime // ignore: cast_nullable_to_non_nullable
              as int,
      painLevel: painLevel == freezed
          ? _value.painLevel
          : painLevel // ignore: cast_nullable_to_non_nullable
              as int,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      treatments: treatments == freezed
          ? _value.treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_AttackDTO extends _AttackDTO {
  const _$_AttackDTO(
      {@JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'head_injuring') required this.headInjuring,
      @JsonKey(name: 'noise_impact') required this.noiseImpact,
      @JsonKey(name: 'suffocation_effect ') required this.suffocationEffect,
      @JsonKey(name: 'alcohol_consumption') required this.alcoholConsumption,
      @JsonKey(name: 'stress_level') required this.stressLevel,
      @JsonKey(name: 'sleaping_time') required this.sleapingTime,
      @JsonKey(name: 'pain_level') required this.painLevel,
      @JsonKey(name: 'symptoms') this.symptoms,
      @JsonKey(name: 'treatments') this.treatments})
      : super._();

  factory _$_AttackDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AttackDTOFromJson(json);

  @override
  @JsonKey(name: 'date')
  final DateTime date;
  @override
  @JsonKey(name: 'duration')
  final Duration duration;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'head_injuring')
  final bool headInjuring;
  @override
  @JsonKey(name: 'noise_impact')
  final bool noiseImpact;
  @override
  @JsonKey(name: 'suffocation_effect ')
  final bool suffocationEffect;
  @override
  @JsonKey(name: 'alcohol_consumption')
  final bool alcoholConsumption;
  @override
  @JsonKey(name: 'stress_level')
  final int stressLevel;
  @override
  @JsonKey(name: 'sleaping_time')
  final int sleapingTime;
  @override
  @JsonKey(name: 'pain_level')
  final int painLevel;
  @override
  @JsonKey(name: 'symptoms')
  final List<int>? symptoms;
  @override
  @JsonKey(name: 'treatments')
  final List<int>? treatments;

  @override
  String toString() {
    return 'AttackDTO(date: $date, duration: $duration, description: $description, headInjuring: $headInjuring, noiseImpact: $noiseImpact, suffocationEffect: $suffocationEffect, alcoholConsumption: $alcoholConsumption, stressLevel: $stressLevel, sleapingTime: $sleapingTime, painLevel: $painLevel, symptoms: $symptoms, treatments: $treatments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttackDTO &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.headInjuring, headInjuring) &&
            const DeepCollectionEquality()
                .equals(other.noiseImpact, noiseImpact) &&
            const DeepCollectionEquality()
                .equals(other.suffocationEffect, suffocationEffect) &&
            const DeepCollectionEquality()
                .equals(other.alcoholConsumption, alcoholConsumption) &&
            const DeepCollectionEquality()
                .equals(other.stressLevel, stressLevel) &&
            const DeepCollectionEquality()
                .equals(other.sleapingTime, sleapingTime) &&
            const DeepCollectionEquality().equals(other.painLevel, painLevel) &&
            const DeepCollectionEquality().equals(other.symptoms, symptoms) &&
            const DeepCollectionEquality()
                .equals(other.treatments, treatments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(headInjuring),
      const DeepCollectionEquality().hash(noiseImpact),
      const DeepCollectionEquality().hash(suffocationEffect),
      const DeepCollectionEquality().hash(alcoholConsumption),
      const DeepCollectionEquality().hash(stressLevel),
      const DeepCollectionEquality().hash(sleapingTime),
      const DeepCollectionEquality().hash(painLevel),
      const DeepCollectionEquality().hash(symptoms),
      const DeepCollectionEquality().hash(treatments));

  @JsonKey(ignore: true)
  @override
  _$AttackDTOCopyWith<_AttackDTO> get copyWith =>
      __$AttackDTOCopyWithImpl<_AttackDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttackDTOToJson(this);
  }
}

abstract class _AttackDTO extends AttackDTO {
  const factory _AttackDTO(
      {@JsonKey(name: 'date') required DateTime date,
      @JsonKey(name: 'duration') required Duration duration,
      @JsonKey(name: 'description') required String description,
      @JsonKey(name: 'head_injuring') required bool headInjuring,
      @JsonKey(name: 'noise_impact') required bool noiseImpact,
      @JsonKey(name: 'suffocation_effect ') required bool suffocationEffect,
      @JsonKey(name: 'alcohol_consumption') required bool alcoholConsumption,
      @JsonKey(name: 'stress_level') required int stressLevel,
      @JsonKey(name: 'sleaping_time') required int sleapingTime,
      @JsonKey(name: 'pain_level') required int painLevel,
      @JsonKey(name: 'symptoms') List<int>? symptoms,
      @JsonKey(name: 'treatments') List<int>? treatments}) = _$_AttackDTO;
  const _AttackDTO._() : super._();

  factory _AttackDTO.fromJson(Map<String, dynamic> json) =
      _$_AttackDTO.fromJson;

  @override
  @JsonKey(name: 'date')
  DateTime get date;
  @override
  @JsonKey(name: 'duration')
  Duration get duration;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'head_injuring')
  bool get headInjuring;
  @override
  @JsonKey(name: 'noise_impact')
  bool get noiseImpact;
  @override
  @JsonKey(name: 'suffocation_effect ')
  bool get suffocationEffect;
  @override
  @JsonKey(name: 'alcohol_consumption')
  bool get alcoholConsumption;
  @override
  @JsonKey(name: 'stress_level')
  int get stressLevel;
  @override
  @JsonKey(name: 'sleaping_time')
  int get sleapingTime;
  @override
  @JsonKey(name: 'pain_level')
  int get painLevel;
  @override
  @JsonKey(name: 'symptoms')
  List<int>? get symptoms;
  @override
  @JsonKey(name: 'treatments')
  List<int>? get treatments;
  @override
  @JsonKey(ignore: true)
  _$AttackDTOCopyWith<_AttackDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
