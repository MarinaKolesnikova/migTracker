import 'package:diplom_proj/src/attack/entities/attack_dto/attack_dto.dart';
import 'package:diplom_proj/src/attack/entities/forecast_dto/forecast_dto.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attack_model.freezed.dart';
part 'attack_model.g.dart';

@freezed
class AttackModel with _$AttackModel {
  const AttackModel._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AttackModel({
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'duration') required Duration duration,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'head_injuring') required bool headInjuring,
    @JsonKey(name: 'noise_impact') required bool noiseImpact,
    @JsonKey(name: 'alcohol_consumption') required bool alcoholConsumption,
    @JsonKey(name: 'suffocation_effect ') required bool suffocationEffect,
    @JsonKey(name: 'stress_level') required int stressLevel,
    @JsonKey(name: 'sleaping_time') required int sleapingTime,
    @JsonKey(name: 'pain_level') required int painLevel,
    @JsonKey(name: 'symptoms') List<Symptom>? symptoms,
    @JsonKey(name: 'treatments') List<Symptom>? treatments,
    @JsonKey(name: 'weather') ForecastDTO? weather,
  }) = _AttackModel;

  factory AttackModel.mock() {
    return AttackModel(
      date: DateTime.now(),
      duration: Duration(),
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      symptoms: [
        Symptom(id: 0, name: 'Aura'),
      ],
      treatments: [
        Symptom.mock(),
      ],
      noiseImpact: false,
      suffocationEffect: false,
      painLevel: 2,
      sleapingTime: 0,
      headInjuring: false,
      alcoholConsumption: false,
      stressLevel: 0,
    );
  }

  factory AttackModel.initial() {
    return AttackModel(
      date: DateTime.now(),
      duration: Duration(),
      description: '',
      symptoms: [],
      treatments: [],
      stressLevel: 0,
      painLevel: 2,
      sleapingTime: 8,
      headInjuring: false,
      alcoholConsumption: false,
      noiseImpact: false,
      suffocationEffect: false,
    );
  }

  AttackDTO toDTO() {
    final List<int> treatmentsId = [];
    final List<int> symptomsId = [];

    treatments?.forEach(((element) => treatmentsId.add(element.id!)));
    symptoms?.forEach(((element) => symptomsId.add(element.id!)));

    return AttackDTO(
      description: description,
      date: date,
      treatments: treatmentsId,
      duration: duration,
      noiseImpact: noiseImpact,
      painLevel: painLevel,
      sleapingTime: sleapingTime,
      headInjuring: headInjuring,
      alcoholConsumption: alcoholConsumption,
      stressLevel: stressLevel,
      symptoms: symptomsId,
      suffocationEffect: suffocationEffect,
    );
  }

  factory AttackModel.fromJson(Map<String, dynamic> json) => _$AttackModelFromJson(json);
}
