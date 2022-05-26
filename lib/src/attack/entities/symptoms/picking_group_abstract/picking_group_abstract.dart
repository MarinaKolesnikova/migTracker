import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';

abstract class PickingGroupAbstract {
  const PickingGroupAbstract({
    required this.id,
    required this.items,
    required this.groupName,
  });
  final String id;
  final List<Symptom> items;
  final String groupName;
}
