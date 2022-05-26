import 'package:diplom_proj/presentation/shared/widgets/mig_icon/mig_icon.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

class MigNumberPicker extends StatefulWidget {
  const MigNumberPicker({
    required this.assetName,
    required this.initialValue,
    required this.label,
    Key? key,
  }) : super(key: key);
  final String assetName;
  final int initialValue;
  final String label;
  @override
  State<MigNumberPicker> createState() => _MigNumberPickerState();
}

class _MigNumberPickerState extends State<MigNumberPicker> {
  late int currentValue = widget.initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MigIcon(
                svgPath: widget.assetName,
                size: 50.0,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                widget.label,
                style: LightTextStyles.poppinsS14W400(color: LightColors.text),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: LightColors.lightPurpleColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: NumberPicker(
                value: currentValue,
                axis: Axis.horizontal,
                minValue: -30,
                maxValue: 40,
                textStyle: LightTextStyles.poppinsS14W400(color: LightColors.text),
                selectedTextStyle: LightTextStyles.poppinsS18W500(color: LightColors.lightPurpleColor),
                onChanged: (value) => setState(() => currentValue = value),
                //haptics: true,
                itemWidth: 52.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: LightColors.lightPurpleColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
