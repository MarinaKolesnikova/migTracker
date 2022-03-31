import 'dart:async';

import 'package:diplom_proj/src/auth/entity/dto/auth_dto/auth_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/login_dto/login_dto.dart';

import 'package:diplom_proj/src/auth/data/services/auth_service.dart';
import 'package:diplom_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';
import 'package:diplom_proj/src/auth/entity/models/token/token.dart';

class AuthServiceMock implements AuthService {
  const AuthServiceMock();

  @override
  FutureOr<Token?> login(
    LoginDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) {
    return Token.mock();
    // if (body.email == 'correctEmail' && body.password == 'correctPassword') {
    //   return Token.mock();
    // } else if (onError != null) {
    //   onError('Невозможно войти с предоставленными учетными данными');
    // }
  }

  @override
  FutureOr<bool?> resetPassword(
    EmailDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) {
    if (body.email == 'correctEmail') {
      return true;
    } else if (onError != null) {
      onError('Невозможно войти с предоставленными учетными данными');
      return false;
    }
    return null;
  }

  @override
  FutureOr<AuthDTO?> signup(SignUpDTO body, {Function(String?)? onError}) {
    return AuthDTO.mock();
  }

  @override
  FutureOr<Token?> loginApple() async {
    await Future.delayed(Duration(seconds: 2));
    return Token.mock();
  }

  @override
  FutureOr<Token?> loginFacebook() async {
    await Future.delayed(Duration(seconds: 2));
    return Token.mock();
  }

  @override
  FutureOr<Token?> loginGoogle() async {
    await Future.delayed(Duration(seconds: 2));
    return Token.mock();
  }
}
