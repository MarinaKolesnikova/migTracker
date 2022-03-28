import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:diplom_proj/config/app_config.dart';
import 'package:diplom_proj/config/modules/dio_module_config.dart';

import 'package:diplom_proj/src/main/data/api/app_api.dart';

import 'package:diplom_proj/src/shared/interfaces/i_base_repository.dart';

@lazySingleton
class AppRepository extends IBaseRepository<AppApi> {
  AppRepository(
    @Named(authorized) Dio dio,
    this.config,
  ) : super(AppApi(dio, baseUrl: config.baseUrl));

  final AppConfig config;
}
