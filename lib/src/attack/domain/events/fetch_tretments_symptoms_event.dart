import 'dart:async';

import 'package:flutter/material.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class FetchTreatmentsSymptomsEvent extends IBlocEvent<AttackState> {
  const FetchTreatmentsSymptomsEvent({
    required this.onCompleted,
  });

  final VoidCallback onCompleted;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final treatmentsList = await bloc.attackService.fetchTreatments();
    final symptomsList = await bloc.attackService.fetchSymptoms();

    if (treatmentsList != null && symptomsList != null) {
      yield bloc.state.copyWith(
        treatmentsGroup: treatmentsList,
        symptomsGroup: symptomsList,
      );
      onCompleted();
    }
  }
}
