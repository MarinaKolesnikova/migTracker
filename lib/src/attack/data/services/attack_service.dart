import 'dart:async';

import 'package:diplom_proj/src/attack/entities/attack_dto/attack_dto.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/attack/entities/forecast_dto/forecast_dto.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';
import 'package:diplom_proj/src/attack/entities/weather_dto/weather_dto.dart';

abstract class AttackService {
  Future<List<PickingGroupAbstract>?> fetchTreatments();
  Future<List<PickingGroupAbstract>?> fetchSymptoms();
  Future<WeatherDTO?> getCurrentWeather({
    required String lon,
    required String lat,
  });

  Future<ForecastDTO?> getForecastWeather({
    required String lon,
    required String lat,
  });

  Future<bool> postAttack(AttackModel model);
  Future<List<AttackDTO>?> fetchAttacks();
}
