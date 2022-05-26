// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symptoms_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SymptomsGroup _$SymptomsGroupFromJson(Map<String, dynamic> json) {
  return _SymptomsGroup.fromJson(json);
}

/// @nodoc
class _$SymptomsGroupTearOff {
  const _$SymptomsGroupTearOff();

  _SymptomsGroup call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'items') required List<Symptom> items,
      @JsonKey(name: 'name') required String groupName}) {
    return _SymptomsGroup(
      id: id,
      items: items,
      groupName: groupName,
    );
  }

  SymptomsGroup fromJson(Map<String, Object?> json) {
    return SymptomsGroup.fromJson(json);
  }
}

/// @nodoc
const $SymptomsGroup = _$SymptomsGroupTearOff();

/// @nodoc
mixin _$SymptomsGroup {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<Symptom> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get groupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomsGroupCopyWith<SymptomsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomsGroupCopyWith<$Res> {
  factory $SymptomsGroupCopyWith(
          SymptomsGroup value, $Res Function(SymptomsGroup) then) =
      _$SymptomsGroupCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'items') List<Symptom> items,
      @JsonKey(name: 'name') String groupName});
}

/// @nodoc
class _$SymptomsGroupCopyWithImpl<$Res>
    implements $SymptomsGroupCopyWith<$Res> {
  _$SymptomsGroupCopyWithImpl(this._value, this._then);

  final SymptomsGroup _value;
  // ignore: unused_field
  final $Res Function(SymptomsGroup) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SymptomsGroupCopyWith<$Res>
    implements $SymptomsGroupCopyWith<$Res> {
  factory _$SymptomsGroupCopyWith(
          _SymptomsGroup value, $Res Function(_SymptomsGroup) then) =
      __$SymptomsGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'items') List<Symptom> items,
      @JsonKey(name: 'name') String groupName});
}

/// @nodoc
class __$SymptomsGroupCopyWithImpl<$Res>
    extends _$SymptomsGroupCopyWithImpl<$Res>
    implements _$SymptomsGroupCopyWith<$Res> {
  __$SymptomsGroupCopyWithImpl(
      _SymptomsGroup _value, $Res Function(_SymptomsGroup) _then)
      : super(_value, (v) => _then(v as _SymptomsGroup));

  @override
  _SymptomsGroup get _value => super._value as _SymptomsGroup;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_SymptomsGroup(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_SymptomsGroup implements _SymptomsGroup {
  const _$_SymptomsGroup(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'items') required this.items,
      @JsonKey(name: 'name') required this.groupName});

  factory _$_SymptomsGroup.fromJson(Map<String, dynamic> json) =>
      _$$_SymptomsGroupFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'items')
  final List<Symptom> items;
  @override
  @JsonKey(name: 'name')
  final String groupName;

  @override
  String toString() {
    return 'SymptomsGroup(id: $id, items: $items, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SymptomsGroup &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.groupName, groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(groupName));

  @JsonKey(ignore: true)
  @override
  _$SymptomsGroupCopyWith<_SymptomsGroup> get copyWith =>
      __$SymptomsGroupCopyWithImpl<_SymptomsGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymptomsGroupToJson(this);
  }
}

abstract class _SymptomsGroup implements SymptomsGroup {
  const factory _SymptomsGroup(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'items') required List<Symptom> items,
      @JsonKey(name: 'name') required String groupName}) = _$_SymptomsGroup;

  factory _SymptomsGroup.fromJson(Map<String, dynamic> json) =
      _$_SymptomsGroup.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'items')
  List<Symptom> get items;
  @override
  @JsonKey(name: 'name')
  String get groupName;
  @override
  @JsonKey(ignore: true)
  _$SymptomsGroupCopyWith<_SymptomsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
