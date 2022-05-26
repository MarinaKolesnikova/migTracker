import 'dart:async';

import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';

import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../attack_bloc.dart';

class SetAttackParametersEvent extends IBlocEvent<AttackState> {
  const SetAttackParametersEvent({
    this.date,
    this.duration,
    this.description,
    this.headInjuring,
    this.noiseImpact,
    this.alcoholConsumption,
    this.suffocationEffect,
    this.stressLevel,
    this.sleapingTime,
    this.painLevel,
    this.symptoms,
    this.treatments,
  });

  final DateTime? date;
  final Duration? duration;
  final String? description;
  final bool? headInjuring;
  final bool? noiseImpact;
  final bool? alcoholConsumption;
  final bool? suffocationEffect;
  final int? stressLevel;
  final int? sleapingTime;
  final int? painLevel;
  final List<Symptom>? symptoms;
  final List<Symptom>? treatments;

  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final curModel = bloc.state.currentModel;
    if (curModel != null) {
      final AttackModel model = AttackModel(
        date: date ?? curModel.date,
        duration: duration ?? curModel.duration,
        description: description ?? curModel.description,
        headInjuring: headInjuring ?? curModel.headInjuring,
        noiseImpact: noiseImpact ?? curModel.noiseImpact,
        alcoholConsumption: alcoholConsumption ?? curModel.alcoholConsumption,
        suffocationEffect: suffocationEffect ?? curModel.suffocationEffect,
        stressLevel: stressLevel ?? curModel.stressLevel,
        sleapingTime: sleapingTime ?? curModel.sleapingTime,
        painLevel: painLevel ?? curModel.painLevel,
      );
      yield bloc.state.copyWith(currentModel: model);
    }
  }
}
