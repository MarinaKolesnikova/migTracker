import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/set_attack_parameters_event.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class SleepingTimePicker extends StatefulWidget {
  const SleepingTimePicker({required this.initialValue, Key? key}) : super(key: key);
  final int? initialValue;
  @override
  State<SleepingTimePicker> createState() => _SleepingTimePickerState();
}

class _SleepingTimePickerState extends State<SleepingTimePicker> {
  late final TextEditingController timeTextController;
  final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;
  late int currentValue;
  @override
  void initState() {
    super.initState();
    currentValue = widget.initialValue ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            dict.hoursOfSleep,
            style: LightTextStyles.poppinsS16W400(),
          ),
        ),
        NumberPicker(
          value: currentValue,
          axis: Axis.horizontal,
          minValue: 0,
          maxValue: 24,
          textStyle: LightTextStyles.poppinsS14W400(color: LightColors.text),
          selectedTextStyle: LightTextStyles.poppinsS18W500(color: LightColors.lightPurpleColor),
          onChanged: (value) {
            context.read<AttackBloc>().add(SetAttackParametersEvent(sleapingTime: value));
          },
          //haptics: true,
          itemWidth: 52.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: LightColors.lightPurpleColor),
          ),
        ),
      ],
    );
  }
}
