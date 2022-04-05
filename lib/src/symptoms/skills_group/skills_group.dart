import 'package:diplom_proj/src/symptoms/skill/skill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:diplom_proj/src/symptoms/skills_group_abstract/skills_group_abstract.dart';

part 'skills_group.freezed.dart';
part 'skills_group.g.dart';

@freezed
class SkillsGroup extends SkillsGroupAbstract with _$SkillsGroup {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory SkillsGroup({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'skills') required List<Skill> skills,
    @JsonKey(name: 'name') required String groupName,
  }) = _SkillsGroup;

  factory SkillsGroup.mock() => SkillsGroup(
        id: 0,
        groupName: 'Any',
        skills: [
          Skill.mock(),
          Skill.mock(),
        ],
      );

  factory SkillsGroup.fromJson(Map<String, dynamic> json) => _$SkillsGroupFromJson(json);
}
