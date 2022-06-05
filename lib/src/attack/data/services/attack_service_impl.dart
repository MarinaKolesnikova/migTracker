import 'package:diplom_proj/src/attack/data/repository/attack_repository.dart';
import 'package:diplom_proj/src/attack/data/services/attack_service.dart';
import 'package:diplom_proj/src/attack/entities/attack_dto/attack_dto.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/attack/entities/forecast_dto/forecast_dto.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';

import 'package:diplom_proj/src/attack/entities/weather_dto/weather_dto.dart';

class AttackServiceImpl implements AttackService {
  const AttackServiceImpl(this._attackRepo);
  final AttackRepository _attackRepo;
  @override
  Future<List<PickingGroupAbstract>?> fetchTreatments() async => _attackRepo.fetchTreatments();
  @override
  Future<List<PickingGroupAbstract>?> fetchSymptoms() async => _attackRepo.fetchSymptoms();

  @override
  Future<WeatherDTO?> getCurrentWeather({
    required String lon,
    required String lat,
  }) async {
    return _attackRepo.getCurrentWeather(lon: lon, lat: lat);
  }

  @override
  Future<ForecastDTO?> getForecastWeather({
    required String lon,
    required String lat,
  }) async {
    return _attackRepo.getForecastWeather(lon: lon, lat: lat);
  }

  @override
  Future<List<AttackDTO>?> fetchAttacks() async {
    return _attackRepo.fetchAttacks();
  }

  @override
  Future<bool> postAttack(AttackModel model) async {
    return _attackRepo.postAttack(model);
  }
}
