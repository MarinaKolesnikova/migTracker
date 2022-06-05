import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/autofill.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/mig_number_picker.dart';
import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';

import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/set_attack_parameters_event.dart';
import 'package:diplom_proj/src/attack/entities/forecast_dto/forecast_dto.dart';

import 'package:flutter/material.dart';

class WeatherConditions extends StatelessWidget {
  const WeatherConditions({
    required this.weatherModel,
    Key? key,
  }) : super(key: key);
  final ForecastDTO? weatherModel;

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
          minValue: -30,
          maxValue: 45,
          step: 1,
          assetName: SvgPathPicker.temperature,
          initialValue: weatherModel?.temp.min.toInt() ?? 20,
          label: dict.temperature,
          onChange: (val) {
            context.read<AttackBloc>().add(SetAttackParametersEvent(temperature: val));
          },
        ),
        MigNumberPicker(
          assetName: SvgPathPicker.humidity,
          minValue: 40,
          maxValue: 90,
          step: 1,
          initialValue: weatherModel?.humidity ?? 65,
          label: dict.humidity,
          onChange: (val) {
            context.read<AttackBloc>().add(SetAttackParametersEvent(humidity: val));
          },
        ),
        MigNumberPicker(
          minValue: 640,
          maxValue: 750,
          step: 1,
          assetName: SvgPathPicker.pressure,
          initialValue: weatherModel?.pressure ?? 690,
          label: dict.pressure,
          onChange: (val) {
            context.read<AttackBloc>().add(SetAttackParametersEvent(pressure: val));
          },
        ),
      ],
    );
  }
}
