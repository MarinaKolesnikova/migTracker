import 'dart:async';

import 'package:flutter/material.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class FetchTreatmentsEvent extends IBlocEvent<AttackState> {
  const FetchTreatmentsEvent({
    required this.onCompleted,
  });

  final VoidCallback onCompleted;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final treatmentsList = await bloc.attackService.fetchTreatments();
    if (treatmentsList != null) {
      yield bloc.state.copyWith(treatmentsGroup: treatmentsList);
      onCompleted();
    }
  }
}
