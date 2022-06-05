import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class LightToogleSwitch extends StatefulWidget {
  const LightToogleSwitch({
    required this.label1,
    required this.label2,
    required this.fgColor1,
    required this.fgColor2,
    required this.onToggle,
    required this.curIndex,
    required this.textColor,
    Key? key,
  }) : super(key: key);
  final String label1;
  final String label2;

  final Color fgColor1;
  final Color fgColor2;
  final Color textColor;
  final int curIndex;
  final void Function(int?) onToggle;

  @override
  _LightToogleSwitchState createState() => _LightToogleSwitchState();
}

class _LightToogleSwitchState extends State<LightToogleSwitch> {
  late Color fgColor;

  late int curIndex;

  @override
  void initState() {
    super.initState();
    fgColor = widget.textColor;

    curIndex = widget.curIndex;
  }

  @override
  Widget build(BuildContext context) {
    final Color inactiveColor = LightColors.text.withOpacity(1.0);
    return SizedBox(
      width: 120.0,
      child: AnimatedToggleSwitch<int>.rollingByHeight(
        current: curIndex,
        animationCurve: Curves.easeInOut,
        indicatorType: IndicatorType.roundedRectangle,
        indicatorSize: Size.fromWidth(2),
        values: [0, 1],
        onChanged: (index) {
          widget.onToggle.call(index);
          setState(() {
            fgColor = index == 0 ? widget.fgColor2 : widget.fgColor1;

            curIndex = index;
          });
        },
        borderColor: Colors.transparent,
        iconBuilder: (i, size, active) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: Text(
                '${i == 0 ? widget.label1 : widget.label2}',
                style: LightTextStyles.poppinsS12W400(color: active ? LightColors.white : inactiveColor),
              ),
            ),
          );
        },
        colorBuilder: getFgColor,
      ),
    );
  }

  Color getFgColor(int index) {
    return index == 0 ? widget.fgColor1 : widget.fgColor2;
  }
}
