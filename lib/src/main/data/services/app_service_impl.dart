import 'dart:async';

import 'package:diplom_proj/src/main/data/repositories/app_repositories.dart';
import 'package:diplom_proj/src/main/data/services/app_service.dart';
import 'package:diplom_proj/src/shared/connection_checker/connection_checker.dart';

class AppServiceImpl implements AppService {
  const AppServiceImpl(this._appRepo);

  final AppRepository _appRepo;

  @override
  Future<bool> checkConnection() async {
    final ConnectionChecker checker = ConnectionChecker();
    return await checker.hasConnection();
  }
}
