import 'dart:async';

import 'package:diplom_proj/src/auth/entity/dto/auth_dto/auth_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';
import 'package:diplom_proj/src/auth/entity/models/token/token.dart';

abstract class AuthService {
  FutureOr<Token?> login(
    LoginDTO body, {
    required bool isTest,
    Function(String?)? onError,
  });
  FutureOr<bool?> resetPassword(
    EmailDTO body, {
    required bool isTest,
    Function(String?)? onError,
  });
  FutureOr<Token?> loginApple();

  FutureOr<Token?> loginGoogle();

  FutureOr<Token?> loginFacebook();

  FutureOr<AuthDTO?> signup(
    SignUpDTO body, {
    Function(String?)? onError,
  });
}
