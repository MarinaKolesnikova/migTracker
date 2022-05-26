import 'package:diplom_proj/presentation/shared/widgets/date_picker/date_picker.dart';
import 'package:diplom_proj/presentation/shared/widgets/date_picker/time_picker.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class Pickers extends StatefulWidget {
  const Pickers({Key? key}) : super(key: key);

  @override
  State<Pickers> createState() => _PickersState();
}

class _PickersState extends State<Pickers> {
  late final TextEditingController dateTextController;
  late final TextEditingController timeTextController;
  late final TextEditingController durationTextController;

  @override
  void initState() {
    super.initState();
    dateTextController = TextEditingController();
    timeTextController = TextEditingController();
    setTime(TimeOfDay.now());

    durationTextController = TextEditingController();
    setDuration(TimeOfDay.now());
  }

  void setTime(TimeOfDay time) {
    timeTextController.text = '${time.hour}:${time.minute}';
    setState(() {});
  }

  void setDuration(TimeOfDay time) {
    durationTextController.text = '${time.hour} h ${time.minute} m';
    setState(() {});
  }

  @override
  void dispose() {
    dateTextController.dispose();
    timeTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: DatePicker(
          labelText: 'date',
          svgPath: SvgPathPicker.date,
          textController: dateTextController,
          selectedDate: DateTime.now(),
          onChange: (date) {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TimePicker(
          labelText: 'time',
          svgPath: SvgPathPicker.time,
          textController: timeTextController,
          initialTime: TimeOfDay.now(),
          onChange: (time) {
            setTime(time);
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TimePicker(
          labelText: 'duration',
          svgPath: SvgPathPicker.hourglass,
          textController: durationTextController,
          initialTime: TimeOfDay.now(),
          onChange: (time) {
            setDuration(time);
          },
        ),
      ),
    ]);
  }
}
