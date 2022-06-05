import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import '../../../../src/attack/domain/attack_bloc.dart';
import '../../../../src/attack/domain/events/set_attack_parameters_event.dart';

class StressSlider extends StatefulWidget {
  const StressSlider({required this.value, Key? key}) : super(key: key);
  final int? value;

  @override
  State<StressSlider> createState() => _StressSliderState();
}

class _StressSliderState extends State<StressSlider> {
  @override
  Widget build(BuildContext context) {
    return SfSliderTheme(
      data: SfSliderThemeData(
        activeLabelStyle: LightTextStyles.poppinsS14W400(color: LightColors.text),
        inactiveLabelStyle: LightTextStyles.poppinsS14W400(color: LightColors.text),
        tooltipBackgroundColor: LightColors.mainItemsColor,
      ),
      child: SfSlider(
        value: widget.value,
        max: 5.0,
        interval: 1,
        stepSize: 1,
        activeColor: LightColors.mainItemsColor,
        inactiveColor: LightColors.trackColor,
        showTicks: true,
        showLabels: true,
        onChanged: (dynamic val) {
          context.read<AttackBloc>().add(SetAttackParametersEvent(stressLevel: val));
        },
      ),
    );
  }
}
