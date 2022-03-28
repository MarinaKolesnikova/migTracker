import 'package:diplom_proj/presentation/shared/widgets/wrap_chip/wrap_chips.dart';
import 'package:diplom_proj/src/symptoms/skill/skill.dart';
import 'package:flutter/material.dart';

class ChipsContent extends StatelessWidget {
  const ChipsContent({
    required this.know,
    required this.hobbies,
    required this.inform,
    this.isEditable = false,
    Key? key,
  }) : super(key: key);

  final List<Skill> know;
  final List<Skill> inform;
  final List<Skill> hobbies;
  final bool isEditable;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (know.isNotEmpty)
          WrapChips(
            label: '',
            skills: know,
            isEditable: isEditable,
          ),
        if (inform.isNotEmpty)
          WrapChips(
            label: '',
            skills: inform,
            isEditable: isEditable,
          ),
        if (hobbies.isNotEmpty)
          WrapChips(
            label: '',
            skills: hobbies,
            isEditable: isEditable,
          ),
      ],
    );
  }
}
