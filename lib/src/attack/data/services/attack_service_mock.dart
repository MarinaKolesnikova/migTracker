import 'package:diplom_proj/src/attack/data/services/attack_service.dart';
import 'package:diplom_proj/src/attack/entities/attack_dto/attack_dto.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/attack/entities/forecast_dto/forecast_dto.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/skills_group/symptoms_group.dart';
import 'package:diplom_proj/src/attack/entities/weather_dto/weather_dto.dart';

class AttackServiceMock implements AttackService {
  const AttackServiceMock();

  @override
  Future<List<PickingGroupAbstract>?> fetchTreatments() async => [SymptomsGroup.mock()];
  @override
  Future<List<PickingGroupAbstract>?> fetchSymptoms() async => [SymptomsGroup.mock()];
  @override
  Future<WeatherDTO?> getCurrentWeather({
    required String lon,
    required String lat,
  }) async {
    return WeatherDTO.mock();
  }

  @override
  Future<ForecastDTO?> getForecastWeather({
    required String lon,
    required String lat,
  }) async {
    return ForecastDTO.mock();
  }

  @override
  Future<List<AttackDTO>?> fetchAttacks() async {
    return [AttackDTO.mock()];
  }

  @override
  Future<bool> postAttack(AttackModel model) async {
    return true;
  }
}
