import 'package:diplom_proj/presentation/shared/widgets/mig_icon/mig_icon.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:diplom_proj/resources/light_text_styles/light_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    required this.labelText,
    required this.textController,
    required this.selectedDate,
    required this.onChange,
    required this.svgPath,
    Key? key,
  }) : super(key: key);
  final String labelText;
  final String svgPath;
  final TextEditingController textController;
  final DateTime selectedDate;
  final void Function(DateTime) onChange;
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime selectedDate;
  @override
  void initState() {
    super.initState();
    selectedDate = widget.selectedDate;

    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    widget.textController.text = formatter.format(selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: () => _selectDate(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: MigIcon(
              onTap: () => _selectDate(),
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

  void _selectDate() async {
    final DateTime? newSelectedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary: LightColors.mainItemsColor,
              onSurface: LightColors.text,
            ),
            dialogBackgroundColor: LightColors.calendarColor,
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: LightColors.text, // button text color
              ),
            ),
          ),
          child: child ?? SizedBox.shrink(),
        );
      },
    );

    if (newSelectedDate != null) {
      selectedDate = newSelectedDate;
      final DateFormat formatter = DateFormat('dd-MM-yyyy');
      widget.textController.text = formatter.format(selectedDate);
      setState(() {});
      widget.onChange(selectedDate);
    }
  }
}
