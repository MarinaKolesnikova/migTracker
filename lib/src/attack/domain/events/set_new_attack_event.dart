import 'dart:async';

import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class SetNewAttackEvent extends IBlocEvent<AttackState> {
  const SetNewAttackEvent({
    required this.onCompleted,
    required this.notNewAttack,
  });

  final VoidCallback onCompleted;
  final VoidCallback notNewAttack;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    if (bloc.state.currentModel != null) {
      notNewAttack();
    } else {
      yield bloc.state.copyWith(currentModel: AttackModel.initial());
    }
  }
}
