part of 'attack_bloc.dart';

@freezed
class AttackState with _$AttackState {
  const factory AttackState({
    required List<PickingGroupAbstract> treatmentsGroup,
    required List<PickingGroupAbstract> symptomsGroup,
    required List<AttackModel> attackList,
    required List<AttackModel> calendarList,
    required AttackModel? currentModel,
    required AttackModel? ongoingAttack,
    required bool isLoading,
    required DateTime? minDate,
    required bool fetchedNewData,
  }) = _AttackState;

  factory AttackState.initial() => AttackState(
        treatmentsGroup: [],
        symptomsGroup: [],
        calendarList: [],
        attackList: [AttackModel.mock()],
        isLoading: true,
        fetchedNewData: false,
        minDate: DateTime(2020),
        currentModel: null,
        ongoingAttack: null,
      );
}
