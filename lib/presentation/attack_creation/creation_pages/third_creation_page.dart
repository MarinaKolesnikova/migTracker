import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/sleaping_time_picker.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/stress_slider.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/weather_conditions.dart';
import 'package:diplom_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:diplom_proj/presentation/shared/widgets/trigger_button/trigger_button.dart';

import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/set_attack_parameters_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdCreationPage extends StatefulWidget {
  const ThirdCreationPage({Key? key}) : super(key: key);

  @override
  State<ThirdCreationPage> createState() => _ThirdCreationPageState();
}

class _ThirdCreationPageState extends State<ThirdCreationPage> {
  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;

    return BlocBuilder<AttackBloc, AttackState>(
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 20.0,
                ),
                child: Text(
                  dict.stressLevel,
                  style: LightTextStyles.poppinsS16W400(),
                ),
              ),
              StressSlider(
                value: state.currentModel?.stressLevel,
              ),
              SleepingTimePicker(initialValue: state.currentModel?.sleapingTime),
              WeatherConditions(
                weatherModel: state.currentModel?.weather,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TriggerButton(
                            isSelected: state.currentModel!.suffocationEffect,
                            callback: (bool isSelected) {
                              context.read<AttackBloc>().add(SetAttackParametersEvent(suffocationEffect: isSelected));
                            },
                            label: dict.suffocationEffect,
                          ),
                          TriggerButton(
                            isSelected: state.currentModel!.noiseImpact,
                            callback: (bool isSelected) {
                              context.read<AttackBloc>().add(SetAttackParametersEvent(noiseImpact: isSelected));
                            },
                            label: dict.noiseImpact,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TriggerButton(
                            isSelected: state.currentModel!.alcoholConsumption,
                            callback: (bool isSelected) {
                              context.read<AttackBloc>().add(SetAttackParametersEvent(alcoholConsumption: isSelected));
                            },
                            label: dict.alcoholConsumption,
                          ),
                          TriggerButton(
                            isSelected: state.currentModel!.headInjuring,
                            callback: (bool isSelected) {
                              context.read<AttackBloc>().add(SetAttackParametersEvent(headInjuring: isSelected));
                            },
                            label: dict.headInjuring,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                      child: LightOutlineButton(
                        onTap: () {},
                        text: dict.start,
                        color: LightColors.text.withOpacity(0.6),
                        textStyle: LightTextStyles.poppinsS18W500(),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: LightOutlineButton(
                        onTap: () {},
                        text: dict.submit,
                        color: LightColors.text.withOpacity(0.6),
                        textStyle: LightTextStyles.poppinsS18W500(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
