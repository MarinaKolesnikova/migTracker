import 'dart:async';

import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class FetchAttackEvent extends IBlocEvent<AttackState> {
  const FetchAttackEvent({
    required this.onCompleted,
  });

  final VoidCallback onCompleted;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final attackList = await bloc.attackService.fetchAttacks();
    final List<AttackModel> models = [];
    final state = bloc.state;
    attackList?.forEach((element) {
      models.add(element.toModel(
        symptoms: state.symptomsGroup,
        treatments: state.treatmentsGroup,
      ));
    });
    if (attackList != null) {
      yield bloc.state.copyWith(attackList: models);
      onCompleted();
    }
  }
}
