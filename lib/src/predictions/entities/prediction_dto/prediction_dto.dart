import 'package:diplom_proj/src/predictions/entities/prediction_weather/prediction_weather.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_dto.freezed.dart';
part 'prediction_dto.g.dart';

@freezed
class PredictionDto with _$PredictionDto {
  const PredictionDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory PredictionDto({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'predictions') required List<PredictionWeather> predictionList,
  }) = _PredictionDto;
  factory PredictionDto.fromJson(Map<String, dynamic> json) => _$PredictionDtoFromJson(json);

  factory PredictionDto.mock() {
    return PredictionDto(userId: FirebaseAuth.instance.currentUser!.uid, predictionList: [
      PredictionWeather.mock(),
      PredictionWeather.mock(),
    ]);
  }
}
