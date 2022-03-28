import 'package:diplom_proj/src/symptoms/skill/skill.dart';
import 'package:diplom_proj/src/symptoms/skills_group/skills_group.dart';
import 'package:diplom_proj/src/symptoms/skills_group_abstract/skills_group_abstract.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/skills_picker.dart';
import 'package:diplom_proj/resources/resources.dart';

mixin SkillsPickerMixin<T extends SkillsPicker> on State<T> {
  late List<SkillsGroupAbstract> tempSkillGroups;
  bool isListExpanded = false;
  bool isSuffixVisible = false;
  bool isAddButtonActive = false;
  @override
  void initState() {
    tempSkillGroups = widget.skillGroups;

    super.initState();
  }

  void addHobby() {
    if (isAddButtonActive) {
      final text = widget.searchController.text.trimRight();
      if (text.isEmpty) return;
      widget.onCustomHobbyAdded?.call(text);
      widget.searchController.clear();
    }
  }

  void onChange() {
    final text = widget.searchController.text;

    if (text.length > 1) {
      findSkills(text);
      isListExpanded = true;
      if (isCustomExist()) {
        isAddButtonActive = false;
      }
    } else {
      tempSkillGroups = widget.skillGroups;
      isAddButtonActive = false;
      isListExpanded = false;
    }
    isSuffixVisible = text.isNotEmpty;
    setState(() {});
  }

  bool isCustomExist() {
    int index = -1;
    if (widget.customHobbies != null) {
      index = widget.customHobbies!.indexWhere((element) => element.name == widget.searchController.text);
    }
    return index != -1;
  }

  void findSkills(String requestText) {
    final List<SkillsGroup> newList = [];
    isAddButtonActive = true;

    for (int i = 0; i < widget.skillGroups.length; i++) {
      final Iterable<Skill>? list = widget.skillGroups[i].skills.where(
        (element) {
          final name = element.name!;
          if (name == requestText) {
            isAddButtonActive = false;
            return true;
          }
          final upperCase = requestText.replaceRange(0, 1, requestText[0].toUpperCase());
          return name.contains(requestText) || name.contains(upperCase) || name.contains(requestText.toUpperCase());
        },
      );
      if (list != null && list.isNotEmpty) {
        newList.add(
          SkillsGroup(
            skills: list.toList(),
            groupName: widget.skillGroups[i].groupName,
            id: widget.skillGroups[i].id,
          ),
        );
      }
    }
    setState(() {
      tempSkillGroups = newList;
    });
  }

  Widget get getPrefixIcon {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SvgPicture.asset(
        SvgPathPicker.search,
        color: LightColors.semiGrey,
      ),
    );
  }
}
