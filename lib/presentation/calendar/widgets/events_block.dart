import 'package:diplom_proj/presentation/main/widgets/attack_item.dart';

import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';

class EventsBlock extends StatelessWidget {
  const EventsBlock({
    required this.attacks,
    Key? key,
  }) : super(key: key);

  final List<AttackModel> attacks;

  @override
  Widget build(BuildContext context) {
    final CalendarDictionary dict = dictionaryManager.getSelectedData.calendar;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (attacks.isNotEmpty)
            Text(
              dict.attacks,
              style: LightTextStyles.poppinsS20W400(color: LightColors.text),
            ),
          ...attacks.map((item) => AttackItem(model: item)).toList(),
        ],
      ),
    );
  }
}
