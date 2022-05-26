import 'package:diplom_proj/presentation/shared/widgets/mig_icon/mig_icon.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({
    required this.labelText,
    required this.textController,
    required this.initialTime,
    required this.onChange,
    required this.svgPath,
    Key? key,
  }) : super(key: key);
  final String labelText;
  final TextEditingController textController;
  final TimeOfDay initialTime;
  final String svgPath;

  final void Function(TimeOfDay) onChange;
  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  late TimeOfDay selectedTime;
  @override
  void initState() {
    super.initState();
    selectedTime = widget.initialTime;
  }

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: () => _selectTime(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: MigIcon(
              svgPath: widget.svgPath,
              size: 30.0,
            ),
          ),
          Text(
            widget.textController.text,
            style: LightTextStyles.nunitoS14W700(color: LightColors.text),
          ),
        ],
      ),
    );
  }

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            timePickerTheme: TimePickerThemeData(
              backgroundColor: LightColors.backgroundColor,
              dayPeriodColor: LightColors.text.withOpacity(0.3),
              dayPeriodTextColor: LightColors.text.withOpacity(0.9),
              hourMinuteColor: LightColors.mainItemsColor,
              dialHandColor: LightColors.backgroundColor,
              dialBackgroundColor: LightColors.mainItemsColor,
              hourMinuteTextColor: LightColors.text.withOpacity(0.9),
              helpTextStyle: TextStyle(color: LightColors.text.withOpacity(0.9)),
            ),
            dialogBackgroundColor: LightColors.calendarColor,
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: LightColors.text.withOpacity(0.9), // button text color
              ),
            ),
          ),
          child: child ?? SizedBox.shrink(),
        );
      },
    );

    if (newTime != null) {
      selectedTime = newTime;

      widget.onChange(newTime);
    }
  }
}
