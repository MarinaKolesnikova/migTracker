// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'skills_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SkillsGroup _$SkillsGroupFromJson(Map<String, dynamic> json) {
  return _SkillsGroup.fromJson(json);
}

/// @nodoc
class _$SkillsGroupTearOff {
  const _$SkillsGroupTearOff();

  _SkillsGroup call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'skills') required List<Skill> skills,
      @JsonKey(name: 'name') required String groupName}) {
    return _SkillsGroup(
      id: id,
      skills: skills,
      groupName: groupName,
    );
  }

  SkillsGroup fromJson(Map<String, Object> json) {
    return SkillsGroup.fromJson(json);
  }
}

/// @nodoc
const $SkillsGroup = _$SkillsGroupTearOff();

/// @nodoc
mixin _$SkillsGroup {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'skills')
  List<Skill> get skills => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get groupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsGroupCopyWith<SkillsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsGroupCopyWith<$Res> {
  factory $SkillsGroupCopyWith(
          SkillsGroup value, $Res Function(SkillsGroup) then) =
      _$SkillsGroupCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'skills') List<Skill> skills,
      @JsonKey(name: 'name') String groupName});
}

/// @nodoc
class _$SkillsGroupCopyWithImpl<$Res> implements $SkillsGroupCopyWith<$Res> {
  _$SkillsGroupCopyWithImpl(this._value, this._then);

  final SkillsGroup _value;
  // ignore: unused_field
  final $Res Function(SkillsGroup) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? skills = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SkillsGroupCopyWith<$Res>
    implements $SkillsGroupCopyWith<$Res> {
  factory _$SkillsGroupCopyWith(
          _SkillsGroup value, $Res Function(_SkillsGroup) then) =
      __$SkillsGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'skills') List<Skill> skills,
      @JsonKey(name: 'name') String groupName});
}

/// @nodoc
class __$SkillsGroupCopyWithImpl<$Res> extends _$SkillsGroupCopyWithImpl<$Res>
    implements _$SkillsGroupCopyWith<$Res> {
  __$SkillsGroupCopyWithImpl(
      _SkillsGroup _value, $Res Function(_SkillsGroup) _then)
      : super(_value, (v) => _then(v as _SkillsGroup));

  @override
  _SkillsGroup get _value => super._value as _SkillsGroup;

  @override
  $Res call({
    Object? id = freezed,
    Object? skills = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_SkillsGroup(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
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
class _$_SkillsGroup implements _SkillsGroup {
  const _$_SkillsGroup(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'skills') required this.skills,
      @JsonKey(name: 'name') required this.groupName});

  factory _$_SkillsGroup.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillsGroupFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'skills')
  final List<Skill> skills;
  @override
  @JsonKey(name: 'name')
  final String groupName;

  @override
  String toString() {
    return 'SkillsGroup(id: $id, skills: $skills, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillsGroup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(skills) ^
      const DeepCollectionEquality().hash(groupName);

  @JsonKey(ignore: true)
  @override
  _$SkillsGroupCopyWith<_SkillsGroup> get copyWith =>
      __$SkillsGroupCopyWithImpl<_SkillsGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillsGroupToJson(this);
  }
}

abstract class _SkillsGroup implements SkillsGroup {
  const factory _SkillsGroup(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'skills') required List<Skill> skills,
      @JsonKey(name: 'name') required String groupName}) = _$_SkillsGroup;

  factory _SkillsGroup.fromJson(Map<String, dynamic> json) =
      _$_SkillsGroup.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'skills')
  List<Skill> get skills => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get groupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillsGroupCopyWith<_SkillsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
