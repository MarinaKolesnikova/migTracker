import 'package:diplom_proj/src/symptoms/skill/skill.dart';

mixin IsChecked {
  bool isChecked(
    Skill skill,
    List<int> checkedList,
  ) {
    final index = checkedList.indexWhere((element) => skill.id == element);
    return index != -1;
  }

  Iterable<Skill> getSkillsInOrder(
    List<Skill> skillList,
    int checkedItem,
  ) {
    final list = skillList.where((element) => checkedItem == element.id);
    return list;
  }
}
