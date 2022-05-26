import 'dart:async';

import 'package:diplom_proj/src/attack/domain/events/set_attack_parameters_event.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class SetUnsetSymptomsEvent extends IBlocEvent<AttackState> {
  const SetUnsetSymptomsEvent({required this.symptomIndex});
  final int symptomIndex;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final state = bloc.state;
    final List<Symptom>? symptomList = state.currentModel?.symptoms;
    Symptom? symptom;
    state.symptomsGroup.forEach((element) {
      element.items.map((e) {
        if (e.id == symptomIndex) symptom = e;
      });
    });
    final newList = <Symptom>[];
    if (symptomList != null && symptomList.isNotEmpty) {
      if (symptomList.contains(symptomIndex)) {
        symptomList.remove(symptomIndex);
      } else {
        symptomList.add(symptom!);
      }
      bloc.add(SetAttackParametersEvent(symptoms: symptomList));
    } else {
      newList.add(symptom!);
      bloc.add(SetAttackParametersEvent(symptoms: newList));
    }
  }
}
