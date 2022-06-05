import 'dart:async';

import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc_event.dart';
import 'package:flutter/material.dart';

class SetCurrentDateEvent extends IBlocEvent<AttackState> {
  const SetCurrentDateEvent({
    required this.selectedDate,
    this.isUpdated = false,
    this.onComplete,
  });
  final DateTime selectedDate;
  final bool isUpdated;
  final VoidCallback? onComplete;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final responseAttacks = bloc.state.attackList.where((element) {
      return element.date.day == selectedDate.day &&
          element.date.month == selectedDate.month &&
          element.date.year == selectedDate.year;
    }).toList();

    yield bloc.state.copyWith(
      calendarList: responseAttacks,
      fetchedNewData: isUpdated,
    );

    onComplete?.call();
  }
}
