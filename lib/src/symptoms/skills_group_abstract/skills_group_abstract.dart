import 'package:diplom_proj/src/symptoms/skill/skill.dart';

abstract class SkillsGroupAbstract {
  const SkillsGroupAbstract({
    required this.id,
    required this.skills,
    required this.groupName,
  });
  final int id;
  final List<Skill> skills;
  final String groupName;
}
