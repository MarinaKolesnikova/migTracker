// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../resources/resources.dart' as _i17;
import '../../src/auth/data/repositories/auth_repository_unauthorized.dart'
    as _i13;
import '../../src/auth/data/services/auth_service.dart' as _i14;
import '../../src/auth/data/storages/token_storage.dart' as _i10;
import '../../src/auth/domain/bloc/auth_bloc.dart' as _i15;
import '../../src/main/data/repositories/app_repositories.dart' as _i11;
import '../../src/main/data/services/app_service.dart' as _i12;
import '../../src/main/data/settings_storage.dart' as _i9;
import '../../src/main/domain/bloc/app_bloc.dart' as _i18;
import '../../src/shared/interfaces/i_connection_checker.dart' as _i7;
import '../../src/shared/interfaces/i_storage.dart' as _i8;
import '../../src/shared/interseptors/connection_interceptor.dart' as _i4;
import '../../src/shared/interseptors/error_interceptor.dart' as _i6;
import '../app_config.dart' as _i3;
import 'application_module_config.dart' as _i19;
import 'dio_module_config.dart' as _i20;
import 'injection_config.dart' as _i16;

const String _dev = 'dev';
const String _stage = 'stage';
const String _prod = 'prod';
const String _mock = 'mock';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final applicationModuleConfig = _$ApplicationModuleConfig();
  final networkModuleConfig = _$NetworkModuleConfig();
  gh.factory<_i3.AppConfig>(() => _i3.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i3.StageConfig(), registerFor: {_stage});
  gh.factory<_i3.AppConfig>(() => _i3.ProdConfig(), registerFor: {_prod});
  gh.factory<_i3.AppConfig>(() => _i3.MockConfig(), registerFor: {_mock});
  gh.lazySingleton<_i4.ConnectionInterceptor>(
      () => networkModuleConfig.connectionInterceptor);
  gh.factory<_i5.Dio>(
      () => networkModuleConfig.provideAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i5.Dio>(
      () => networkModuleConfig
          .provideAuthorizedMentoringDio(get<_i3.AppConfig>()),
      instanceName: 'authorized_mentoring');
  gh.factory<_i5.Dio>(
      () => networkModuleConfig.provideUnAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i6.ErrorInterceptor>(
      () => networkModuleConfig.errorInterceptor);
  gh.lazySingleton<_i7.IConnectionChecker>(
      () => networkModuleConfig.connectionChecker);
  gh.factory<_i8.IStorage>(
      () => applicationModuleConfig.getStorageService(get<_i3.AppConfig>()));
  gh.lazySingleton<_i9.SettingStorage>(
      () => _i9.SettingStorage(get<_i8.IStorage>()));
  gh.lazySingleton<_i10.TokenStorage>(
      () => _i10.TokenStorage(get<_i8.IStorage>()));
  gh.lazySingleton<_i11.AppRepository>(() => _i11.AppRepository(
      get<_i5.Dio>(instanceName: 'authorized'), get<_i3.AppConfig>()));
  gh.factory<_i12.AppService>(() => applicationModuleConfig.getAppService(
      get<_i3.AppConfig>(), get<_i11.AppRepository>()));
  gh.lazySingleton<_i13.AuthRepositoryUnAuthorized>(() =>
      _i13.AuthRepositoryUnAuthorized(
          get<_i5.Dio>(instanceName: 'unauthorized'), get<_i3.AppConfig>()));
  gh.factory<_i14.AuthService>(() => applicationModuleConfig.getAuthService(
      get<_i3.AppConfig>(), get<_i13.AuthRepositoryUnAuthorized>()));
  gh.lazySingleton<_i15.AuthBloc>(
      () => _i15.AuthBloc(get<_i10.TokenStorage>(), get<_i14.AuthService>()));
  gh.singleton<_i16.AppRouter>(applicationModuleConfig.router);
  gh.singleton<_i17.DictionaryManager>(applicationModuleConfig.dictionary);
  gh.singleton<_i18.AppBloc>(_i18.AppBloc(
      storage: get<_i8.IStorage>(),
      settingStorage: get<_i9.SettingStorage>(),
      tokenStorage: get<_i10.TokenStorage>(),
      dictionaryManager: get<_i17.DictionaryManager>(),
      appService: get<_i12.AppService>()));
  return get;
}

class _$ApplicationModuleConfig extends _i19.ApplicationModuleConfig {}

class _$NetworkModuleConfig extends _i20.NetworkModuleConfig {}
