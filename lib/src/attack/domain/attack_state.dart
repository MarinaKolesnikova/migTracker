part of 'attack_bloc.dart';

@freezed
class AttackState with _$AttackState {
  const factory AttackState({
    required List<PickingGroupAbstract> treatmentsGroup,
    required List<PickingGroupAbstract> symptomsGroup,
    required List<AttackModel> attackList,
    required AttackModel? currentModel,
    required bool isLoading,
    required DateTime? minDate,
    required bool fetchedNewData,
  }) = _AttackState;

  factory AttackState.initial() => AttackState(
        treatmentsGroup: [],
        symptomsGroup: [],
        attackList: [],
        isLoading: true,
        fetchedNewData: false,
        minDate: null,
        currentModel: null,
      );
}
