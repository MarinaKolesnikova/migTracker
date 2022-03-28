// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Skill _$_$_SkillFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Skill', json, () {
    final val = _$_Skill(
      id: $checkedConvert(json, 'id', (v) => v as int?),
      name: $checkedConvert(json, 'name', (v) => v as String?),
      groupId: $checkedConvert(json, 'group_id', (v) => v as int?),
    );
    return val;
  }, fieldKeyMap: const {'groupId': 'group_id'});
}

Map<String, dynamic> _$_$_SkillToJson(_$_Skill instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'group_id': instance.groupId,
    };
