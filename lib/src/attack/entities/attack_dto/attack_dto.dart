import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attack_dto.freezed.dart';
part 'attack_dto.g.dart';

@freezed
class AttackDTO with _$AttackDTO {
  const AttackDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AttackDTO({
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'duration') required Duration duration,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'head_injuring') required bool headInjuring,
    @JsonKey(name: 'noise_impact') required bool noiseImpact,
    @JsonKey(name: 'suffocation_effect ') required bool suffocationEffect,
    @JsonKey(name: 'alcohol_consumption') required bool alcoholConsumption,
    @JsonKey(name: 'stress_level') required int stressLevel,
    @JsonKey(name: 'sleaping_time') required int sleapingTime,
    @JsonKey(name: 'pain_level') required int painLevel,
    @JsonKey(name: 'symptoms') List<int>? symptoms,
    @JsonKey(name: 'treatments') List<int>? treatments,
  }) = _AttackDTO;

  factory AttackDTO.mock() {
    return AttackDTO(
      date: DateTime.now(),
      duration: Duration(hours: 1),
      description: '_',
      symptoms: [0, 1],
      treatments: [0],
      noiseImpact: false,
      painLevel: 2,
      sleapingTime: 7,
      headInjuring: true,
      alcoholConsumption: true,
      suffocationEffect: true,
      stressLevel: 3,
    );
  }

  AttackModel toModel({
    required List<PickingGroupAbstract> symptoms,
    required List<PickingGroupAbstract> treatments,
  }) {
    final List<Symptom> symptomsList = [];
    final List<Symptom> treamentsList = [];
    symptoms.forEach((group) {
      this.symptoms?.forEach((id) {
        symptomsList.addAll(group.items.where((item) => id == item.id));
      });
    });
    treatments.forEach((group) {
      this.treatments?.forEach((id) {
        treamentsList.addAll(group.items.where((item) => id == item.id));
      });
    });

    return AttackModel(
      date: date,
      duration: duration,
      description: description,
      headInjuring: headInjuring,
      noiseImpact: noiseImpact,
      alcoholConsumption: alcoholConsumption,
      stressLevel: stressLevel,
      sleapingTime: sleapingTime,
      painLevel: painLevel,
      treatments: treamentsList,
      symptoms: symptomsList,
      suffocationEffect: suffocationEffect,
    );
  }

  factory AttackDTO.fromJson(Map<String, dynamic> json) => _$AttackDTOFromJson(json);
}
