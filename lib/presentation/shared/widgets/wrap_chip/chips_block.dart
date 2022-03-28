import 'package:diplom_proj/presentation/shared/widgets/wrap_chip/light_chip.dart';
import 'package:diplom_proj/src/symptoms/skill/skill.dart';
import 'package:flutter/material.dart';

class ChipsBlock extends StatelessWidget {
  const ChipsBlock({
    required this.isEditable,
    required this.onCancelled,
    required this.skills,
    Key? key,
  }) : super(key: key);
  final List<Skill> skills;
  final Function(int id)? onCancelled;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: skills.map(
          (element) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                LightChip(
                  skill: element,
                  isEditable: isEditable,
                  onCancelled: (value) {
                    onCancelled?.call(value.id!);
                  },
                ),
              ],
            );
          },
        ).toList(),
      ),
    );
  }
}
