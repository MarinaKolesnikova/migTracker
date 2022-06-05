part of 'prediction_bloc.dart';

@freezed
class PredictionState with _$PredictionState {
  const factory PredictionState({
    required List<PredictionWeather> predictionList,
    required PredictionWeather currentPredictions,
  }) = _PredictionState;

  factory PredictionState.initial() => PredictionState(
        predictionList: [PredictionWeather.mock()],
        currentPredictions: PredictionWeather.mock(),
      );
}
