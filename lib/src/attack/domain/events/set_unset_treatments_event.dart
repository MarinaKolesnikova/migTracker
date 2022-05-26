import 'dart:async';

import 'package:diplom_proj/src/attack/domain/events/set_attack_parameters_event.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class SetUnsetTreatmentsEvent extends IBlocEvent<AttackState> {
  const SetUnsetTreatmentsEvent({required this.treatmentIndex});
  final int treatmentIndex;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final state = bloc.state;
    final List<Symptom>? treatmentList = state.currentModel?.symptoms;
    Symptom? treatment;
    state.treatmentsGroup.forEach((element) {
      element.items.map((e) {
        if (e.id == treatmentIndex) treatment = e;
      });
    });
    final newList = <Symptom>[];
    if (treatmentList != null && treatmentList.isNotEmpty) {
      if (treatmentList.contains(treatmentIndex)) {
        treatmentList.remove(treatmentIndex);
      } else {
        treatmentList.add(treatment!);
      }
      bloc.add(SetAttackParametersEvent(treatments: treatmentList));
    } else {
      newList.add(treatment!);
      bloc.add(SetAttackParametersEvent(treatments: newList));
    }
  }
}
