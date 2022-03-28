// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'skill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
class _$SkillTearOff {
  const _$SkillTearOff();

  _Skill call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'group_id') int? groupId}) {
    return _Skill(
      id: id,
      name: name,
      groupId: groupId,
    );
  }

  Skill fromJson(Map<String, Object> json) {
    return Skill.fromJson(json);
  }
}

/// @nodoc
const $Skill = _$SkillTearOff();

/// @nodoc
mixin _$Skill {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  int? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'group_id') int? groupId});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res> implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  final Skill _value;
  // ignore: unused_field
  final $Res Function(Skill) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$SkillCopyWith(_Skill value, $Res Function(_Skill) then) =
      __$SkillCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'group_id') int? groupId});
}

/// @nodoc
class __$SkillCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res>
    implements _$SkillCopyWith<$Res> {
  __$SkillCopyWithImpl(_Skill _value, $Res Function(_Skill) _then)
      : super(_value, (v) => _then(v as _Skill));

  @override
  _Skill get _value => super._value as _Skill;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_Skill(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_Skill implements _Skill {
  const _$_Skill(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'group_id') this.groupId});

  factory _$_Skill.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'group_id')
  final int? groupId;

  @override
  String toString() {
    return 'Skill(id: $id, name: $name, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Skill &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality().equals(other.groupId, groupId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(groupId);

  @JsonKey(ignore: true)
  @override
  _$SkillCopyWith<_Skill> get copyWith =>
      __$SkillCopyWithImpl<_Skill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillToJson(this);
  }
}

abstract class _Skill implements Skill {
  const factory _Skill(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'group_id') int? groupId}) = _$_Skill;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$_Skill.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'group_id')
  int? get groupId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillCopyWith<_Skill> get copyWith => throw _privateConstructorUsedError;
}
