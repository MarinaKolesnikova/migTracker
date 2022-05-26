// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarDictionary _$CalendarDictionaryFromJson(Map<String, dynamic> json) {
  return _CalendarDictionary.fromJson(json);
}

/// @nodoc
class _$CalendarDictionaryTearOff {
  const _$CalendarDictionaryTearOff();

  _CalendarDictionary call(
      {@JsonKey(name: 'calendar_label') required String calendarLabel,
      @JsonKey(name: 'attacks') required String attacks,
      @JsonKey(name: 'today') required String today}) {
    return _CalendarDictionary(
      calendarLabel: calendarLabel,
      attacks: attacks,
      today: today,
    );
  }

  CalendarDictionary fromJson(Map<String, Object?> json) {
    return CalendarDictionary.fromJson(json);
  }
}

/// @nodoc
const $CalendarDictionary = _$CalendarDictionaryTearOff();

/// @nodoc
mixin _$CalendarDictionary {
  @JsonKey(name: 'calendar_label')
  String get calendarLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'attacks')
  String get attacks => throw _privateConstructorUsedError;
  @JsonKey(name: 'today')
  String get today => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarDictionaryCopyWith<CalendarDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDictionaryCopyWith<$Res> {
  factory $CalendarDictionaryCopyWith(
          CalendarDictionary value, $Res Function(CalendarDictionary) then) =
      _$CalendarDictionaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'calendar_label') String calendarLabel,
      @JsonKey(name: 'attacks') String attacks,
      @JsonKey(name: 'today') String today});
}

/// @nodoc
class _$CalendarDictionaryCopyWithImpl<$Res>
    implements $CalendarDictionaryCopyWith<$Res> {
  _$CalendarDictionaryCopyWithImpl(this._value, this._then);

  final CalendarDictionary _value;
  // ignore: unused_field
  final $Res Function(CalendarDictionary) _then;

  @override
  $Res call({
    Object? calendarLabel = freezed,
    Object? attacks = freezed,
    Object? today = freezed,
  }) {
    return _then(_value.copyWith(
      calendarLabel: calendarLabel == freezed
          ? _value.calendarLabel
          : calendarLabel // ignore: cast_nullable_to_non_nullable
              as String,
      attacks: attacks == freezed
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as String,
      today: today == freezed
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CalendarDictionaryCopyWith<$Res>
    implements $CalendarDictionaryCopyWith<$Res> {
  factory _$CalendarDictionaryCopyWith(
          _CalendarDictionary value, $Res Function(_CalendarDictionary) then) =
      __$CalendarDictionaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'calendar_label') String calendarLabel,
      @JsonKey(name: 'attacks') String attacks,
      @JsonKey(name: 'today') String today});
}

/// @nodoc
class __$CalendarDictionaryCopyWithImpl<$Res>
    extends _$CalendarDictionaryCopyWithImpl<$Res>
    implements _$CalendarDictionaryCopyWith<$Res> {
  __$CalendarDictionaryCopyWithImpl(
      _CalendarDictionary _value, $Res Function(_CalendarDictionary) _then)
      : super(_value, (v) => _then(v as _CalendarDictionary));

  @override
  _CalendarDictionary get _value => super._value as _CalendarDictionary;

  @override
  $Res call({
    Object? calendarLabel = freezed,
    Object? attacks = freezed,
    Object? today = freezed,
  }) {
    return _then(_CalendarDictionary(
      calendarLabel: calendarLabel == freezed
          ? _value.calendarLabel
          : calendarLabel // ignore: cast_nullable_to_non_nullable
              as String,
      attacks: attacks == freezed
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as String,
      today: today == freezed
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_CalendarDictionary implements _CalendarDictionary {
  const _$_CalendarDictionary(
      {@JsonKey(name: 'calendar_label') required this.calendarLabel,
      @JsonKey(name: 'attacks') required this.attacks,
      @JsonKey(name: 'today') required this.today});

  factory _$_CalendarDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarDictionaryFromJson(json);

  @override
  @JsonKey(name: 'calendar_label')
  final String calendarLabel;
  @override
  @JsonKey(name: 'attacks')
  final String attacks;
  @override
  @JsonKey(name: 'today')
  final String today;

  @override
  String toString() {
    return 'CalendarDictionary(calendarLabel: $calendarLabel, attacks: $attacks, today: $today)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarDictionary &&
            const DeepCollectionEquality()
                .equals(other.calendarLabel, calendarLabel) &&
            const DeepCollectionEquality().equals(other.attacks, attacks) &&
            const DeepCollectionEquality().equals(other.today, today));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(calendarLabel),
      const DeepCollectionEquality().hash(attacks),
      const DeepCollectionEquality().hash(today));

  @JsonKey(ignore: true)
  @override
  _$CalendarDictionaryCopyWith<_CalendarDictionary> get copyWith =>
      __$CalendarDictionaryCopyWithImpl<_CalendarDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarDictionaryToJson(this);
  }
}

abstract class _CalendarDictionary implements CalendarDictionary {
  const factory _CalendarDictionary(
      {@JsonKey(name: 'calendar_label') required String calendarLabel,
      @JsonKey(name: 'attacks') required String attacks,
      @JsonKey(name: 'today') required String today}) = _$_CalendarDictionary;

  factory _CalendarDictionary.fromJson(Map<String, dynamic> json) =
      _$_CalendarDictionary.fromJson;

  @override
  @JsonKey(name: 'calendar_label')
  String get calendarLabel;
  @override
  @JsonKey(name: 'attacks')
  String get attacks;
  @override
  @JsonKey(name: 'today')
  String get today;
  @override
  @JsonKey(ignore: true)
  _$CalendarDictionaryCopyWith<_CalendarDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
