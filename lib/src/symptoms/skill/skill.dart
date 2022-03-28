import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill.freezed.dart';

part 'skill.g.dart';

@freezed
class Skill with _$Skill {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Skill({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'group_id') int? groupId,
  }) = _Skill;

  factory Skill.mock() => const Skill(
        id: 0,
        name: 'Any',
        groupId: 0,
      );

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
