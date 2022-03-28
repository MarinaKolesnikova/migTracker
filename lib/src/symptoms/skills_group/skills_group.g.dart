// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillsGroup _$_$_SkillsGroupFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SkillsGroup', json, () {
    final val = _$_SkillsGroup(
      id: $checkedConvert(json, 'id', (v) => v as int),
      skills: $checkedConvert(
          json,
          'skills',
          (v) => (v as List<dynamic>)
              .map((e) => Skill.fromJson(e as Map<String, dynamic>))
              .toList()),
      groupName: $checkedConvert(json, 'name', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'groupName': 'name'});
}

Map<String, dynamic> _$_$_SkillsGroupToJson(_$_SkillsGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skills': instance.skills.map((e) => e.toJson()).toList(),
      'name': instance.groupName,
    };
