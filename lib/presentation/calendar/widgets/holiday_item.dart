import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';


class HolidayItem extends StatelessWidget {
  const HolidayItem({
    required this.model,
    Key? key,
  }) : super(key: key);
  final AttackModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
     model.description,
        style: LightTextStyles.poppinsS20W400(color:LightColors.text),
      ),
    );
  }
}
