part of 'advice_bloc.dart';

@freezed
class AdviceState with _$AdviceState {
  const factory AdviceState({
    required List<AdviceDTO> adviceDto,
  }) = _AdviceState;

  factory AdviceState.initial() => AdviceState(
        adviceDto: [
          AdviceDTO.mock(),
          AdviceDTO.mock(),
        ],
      );
}
