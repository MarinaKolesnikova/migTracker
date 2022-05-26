import 'dart:async';

import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class PostAttackEvent extends IBlocEvent<AttackState> {
  const PostAttackEvent({
    required this.onCompleted,
    required this.model,
  });
  final AttackModel model;
  final VoidCallback onCompleted;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final state = bloc.state;
    yield state.copyWith(isLoading: true);
    final isSuccess = await bloc.attackService.postAttack(model);

    if (isSuccess) {
      yield state.copyWith(
        attackList: state.attackList..add(model),
        isLoading: false,
      );
      onCompleted();
    }
  }
}
