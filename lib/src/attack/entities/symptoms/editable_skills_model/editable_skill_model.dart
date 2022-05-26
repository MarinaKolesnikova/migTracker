import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';

class EditableSkillModel {
  const EditableSkillModel({
    required this.symptom,
    required this.isChecked,
  });
  final Symptom symptom;
  final bool isChecked;
}
