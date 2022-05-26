import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/sleaping_time_picker.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/stress_slider.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/weather_conditions.dart';
import 'package:diplom_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:diplom_proj/presentation/shared/widgets/trigger_button/trigger_button.dart';

import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class ThirdCreationPage extends StatelessWidget {
  const ThirdCreationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;

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
          StressSlider(),
          SleepingTimePicker(initialValue: 0),
          WeatherConditions(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TriggerButton(
                        isSelected: false,
                        callback: (bool isSelected) {},
                        label: dict.suffocationEffect,
                      ),
                      TriggerButton(
                        isSelected: false,
                        callback: (bool isSelected) {},
                        label: dict.noiseImpact,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TriggerButton(
                        isSelected: true,
                        callback: (bool isSelected) {},
                        label: dict.alcoholConsumption,
                      ),
                      TriggerButton(
                        isSelected: true,
                        callback: (bool isSelected) {},
                        label: dict.headInjuring,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: LightOutlineButton(
              onTap: () {},
              text: dict.submit,
              color: LightColors.text.withOpacity(0.6),
              textStyle: LightTextStyles.poppinsS18W500(),
            ),
          ),
        ],
      ),
    );
  }
}
