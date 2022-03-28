import 'package:diplom_proj/src/symptoms/skill/skill.dart';

class EditableSkillModel {
  const EditableSkillModel({
    required this.skill,
    required this.isChecked,
  });
  final Skill skill;
  final bool isChecked;
}
