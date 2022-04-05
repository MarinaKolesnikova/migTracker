import 'package:dio/dio.dart';
import 'package:diplom_proj/src/auth/entity/dto/social_token/social_token_dto.dart';
import 'package:diplom_proj/src/auth/entity/models/social_token/social_token.dart';
import 'package:diplom_proj/src/auth/entity/models/token/token.dart';
import 'package:injectable/injectable.dart';
import 'package:diplom_proj/config/app_config.dart';
import 'package:diplom_proj/config/modules/dio_module_config.dart';
import 'package:diplom_proj/src/auth/data/api/auth_api.dart';

import 'package:diplom_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:diplom_proj/src/shared/interfaces/i_base_repository.dart';

@lazySingleton
class AuthRepositoryUnAuthorized extends IBaseRepository<AuthApi> {
  AuthRepositoryUnAuthorized(
    @Named(unauthorized) Dio dio,
    this.config,
  ) : super(AuthApi(dio, baseUrl: config.baseUrl));

  final AppConfig config;

  Future<Token?> login(LoginDTO body) async => await api.login(body, config.baseUrl);
  Future resetPassword(EmailDTO body) async => await api.resetPassword(body, config.baseUrl);
  Future<Token?> loginGoogle(SocialToken socialToken) async {
    return await api.loginGoogle(SocialTokenDTO.fromModel(socialToken));
  }

  Future<Token?> loginFacebook(SocialToken socialToken) async {
    return await api.loginFacebook(SocialTokenDTO.fromModel(socialToken));
  }

  Future<Token?> loginApple(SocialToken socialToken) async {
    return await api.loginApple(SocialTokenDTO.fromModel(socialToken));
  }
}
