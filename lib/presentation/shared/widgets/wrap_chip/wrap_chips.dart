import 'package:diplom_proj/presentation/shared/widgets/wrap_chip/chips_block.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/symptoms/skill/skill.dart';
import 'package:flutter/material.dart';

class WrapChips extends StatelessWidget {
  const WrapChips({
    required this.skills,
    required this.label,
    this.onCancelled,
    this.isEditable = false,
    Key? key,
  }) : super(key: key);
  final List<Skill> skills;
  final String label;
  final Function(int index)? onCancelled;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                label,
                style: LightTextStyles.nunitoS16W400(color: LightColors.text),
              ),
            ),
          ],
        ),
        ChipsBlock(
          skills: skills,
          onCancelled: onCancelled,
          isEditable: isEditable,
        ),
      ],
    );
  }
}
