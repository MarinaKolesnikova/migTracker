import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:diplom_proj/config/app_config.dart';
import 'package:diplom_proj/config/modules/dio_module_config.dart';
import 'package:diplom_proj/src/attack/data/api/weather_api.dart';
import 'package:diplom_proj/src/attack/entities/attack_dto/attack_dto.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/attack/entities/forecast_dto/forecast_dto.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/skills_group/symptoms_group.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';
import 'package:diplom_proj/src/attack/entities/weather_dto/weather_dto.dart';
import 'package:diplom_proj/src/shared/interfaces/i_base_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AttackRepository extends IBaseRepository<WeatherApi> {
  AttackRepository(
    @Named(weather) Dio dio,
    this.config,
  ) : super(WeatherApi(dio, baseUrl: config.weatherUrl));

  final AppConfig config;

  Future<bool> postAttack(AttackModel model) async {
    try {
      await FirebaseFirestore.instance.collection('attack').add(model.toDTO().toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<AttackDTO>?> fetchAttacks() async {
    try {
      final attacksMap = await FirebaseFirestore.instance.collection('attack').get();
      final List<AttackDTO> list = [];
      final toList = (element) {
        list.add(AttackDTO.fromJson(element.data()));
      };
      attacksMap.docs.forEach(toList);

      return list;
    } catch (e) {
      return null;
    }
  }

  Future<List<PickingGroupAbstract>?> fetchTreatments() async {
    try {
      final List<PickingGroupAbstract> groups = [];
      final medicinesMap = await FirebaseFirestore.instance.collection('medicines').get();
      final List<Symptom> group = [];
      print(medicinesMap.docs.length);
      final toList = (element) {
        group.add(Symptom.fromJson(element.data()));
      };
      medicinesMap.docs.forEach(toList);
      groups.add(
        SymptomsGroup(id: 'medicines', items: [...group], groupName: 'medicines'),
      );
      final exercisesMap = await FirebaseFirestore.instance.collection('physical_exercise').get();
      group.clear();
      exercisesMap.docs.forEach(toList);
      groups.add(
        SymptomsGroup(id: 'physical_exercise', items: [...group], groupName: 'physical exercise'),
      );

      return groups;
    } catch (e) {
      return null;
    }
  }

  Future<WeatherDTO> getCurrentWeather({
    required String lon,
    required String lat,
  }) {
    return api.getCurrentWeather(lon: lon, lat: lat, keyAPI: config.apiKey);
  }

  Future<ForecastDTO> getForecastWeather({
    required String lon,
    required String lat,
  }) {
    return api.getForecastWeather(lon: lon, lat: lat, keyAPI: config.apiKey);
  }
}
