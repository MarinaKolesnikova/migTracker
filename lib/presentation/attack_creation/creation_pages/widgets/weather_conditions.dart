import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/autofill.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/mig_number_picker.dart';
import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';

import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class WeatherConditions extends StatelessWidget {
  const WeatherConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            dict.weatherConditions,
            style: LightTextStyles.poppinsS16W400(),
          ),
        ),
        Autofill(),
        MigNumberPicker(
          assetName: SvgPathPicker.temperature,
          initialValue: 20,
          label: dict.temperature,
        ),
        MigNumberPicker(
          assetName: SvgPathPicker.humidity,
          initialValue: 20,
          label: dict.humidity,
        ),
        MigNumberPicker(
          assetName: SvgPathPicker.pressure,
          initialValue: 20,
          label: dict.pressure,
        ),
      ],
    );
  }
}
