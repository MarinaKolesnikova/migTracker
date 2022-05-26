import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_1_custom_paint.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_2_custom_painter.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_3_custom_painter.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_4_custom_painter.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_5_custom_painter.dart';

import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/brain_part_widget.dart';
import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';

class PainLocalization extends StatefulWidget {
  const PainLocalization({Key? key}) : super(key: key);

  @override
  State<PainLocalization> createState() => _PainLocalizationState();
}

class _PainLocalizationState extends State<PainLocalization> {
  final Color chosen = LightColors.lightPurpleColor;
  final Color unChosen = LightColors.tileColor;

  bool is1PartChosen = false;
  bool is2PartChosen = false;
  bool is3PartChosen = false;
  bool is4PartChosen = false;
  bool is5PartChosen = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        BrainPartWidget(
          onTap: (() {
            is1PartChosen = !is1PartChosen;
            setState(() {});
          }),
          size: Size(55.0, 157.0),
          top: 20.0,
          left: 2.0,
          painter: Brain1CustomPaint(getColor(isChosen: is1PartChosen)),
        ),
        BrainPartWidget(
          onTap: (() {
            is2PartChosen = !is2PartChosen;
            setState(() {});
          }),
          size: Size(209.0, 72.0),
          left: 43.0,
          top: 4.0,
          painter: Brain2CustomPaint(getColor(isChosen: is2PartChosen)),
        ),
        BrainPartWidget(
          onTap: (() {
            is3PartChosen = !is3PartChosen;
            setState(() {});
          }),
          top: 59.0,
          left: 44.0,
          painter: Brain3CustomPaint(getColor(isChosen: is3PartChosen)),
          size: Size(148.0, 133.0),
        ),
        BrainPartWidget(
          onTap: (() {
            is4PartChosen = !is4PartChosen;
            setState(() {});
          }),
          top: 40.0,
          left: 124.0,
          painter: Brain4CustomPaint(getColor(isChosen: is4PartChosen)),
          size: Size(135.0, 104.0),
        ),
        BrainPartWidget(
          onTap: (() {
            is5PartChosen = !is5PartChosen;
            setState(() {});
          }),
          top: 104.0,
          left: 142.0,
          painter: Brain5CustomPaint(getColor(isChosen: is5PartChosen)),
          size: Size(113.0, 125.5),
        ),
      ],
    );
  }

  Color getColor({required bool isChosen}) {
    return isChosen ? chosen : unChosen;
  }
}
