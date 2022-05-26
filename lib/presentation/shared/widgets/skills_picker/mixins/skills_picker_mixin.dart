import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/skills_group/symptoms_group.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/custom_picker.dart';
import 'package:diplom_proj/resources/resources.dart';

mixin SkillsPickerMixin<T extends CustomPicker> on State<T> {
  late List<PickingGroupAbstract> tempSymptomsGroups;
  bool isListExpanded = false;
  bool isSuffixVisible = false;
  bool isAddButtonActive = false;
  @override
  void initState() {
    tempSymptomsGroups = widget.pickedGroups;

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
      tempSymptomsGroups = widget.pickedGroups;
      isAddButtonActive = false;
      isListExpanded = false;
    }
    isSuffixVisible = text.isNotEmpty;
    setState(() {});
  }

  bool isCustomExist() {
    int index = -1;
    if (widget.customSymptoms != null) {
      index = widget.customSymptoms!.indexWhere((element) => element.name == widget.searchController.text);
    }
    return index != -1;
  }

  void findSkills(String requestText) {
    final List<SymptomsGroup> newList = [];
    isAddButtonActive = true;

    for (int i = 0; i < widget.pickedGroups.length; i++) {
      final Iterable<Symptom>? list = widget.pickedGroups[i].items.where(
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
          SymptomsGroup(
            items: list.toList(),
            groupName: widget.pickedGroups[i].groupName,
            id: widget.pickedGroups[i].id,
          ),
        );
      }
    }
    setState(() {
      tempSymptomsGroups = newList;
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
