import 'dart:async';

import 'package:dio/dio.dart';
import 'package:diplom_proj/src/auth/data/repositories/auth_repository_unauthorized.dart';
import 'package:diplom_proj/src/auth/data/services/auth_service.dart';
import 'package:diplom_proj/src/auth/entity/dto/auth_dto/auth_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:diplom_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';
import 'package:diplom_proj/src/auth/entity/models/social_token/social_token.dart';
import 'package:diplom_proj/src/auth/entity/models/token/token.dart';
import 'package:diplom_proj/src/shared/entities/models/email_error/email_error.dart';
import 'package:diplom_proj/src/shared/entities/models/portal_error.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthServiceImpl implements AuthService {
  const AuthServiceImpl(this._authRepo);

  final AuthRepositoryUnAuthorized _authRepo;

  @override
  FutureOr<Token?> login(
    LoginDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) async {
    try {
      return _authRepo.login(body);
    } on DioError catch (e) {
      if (onError != null && e.response != null) {
        final PortalError error = PortalError.fromJson(e.response!.data);
        onError(error.errorMessage);
      }
    }
  }

  @override
  FutureOr<bool?> resetPassword(
    EmailDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) async {
    try {
      await _authRepo.resetPassword(body);

      onError?.call(null);

      return true;
    } on DioError catch (e) {
      if (onError != null && e.response != null) {
        final EmailError error = EmailError.fromJson(e.response!.data);
        String errorText = '';

        for (String item in error.errorMessage!) {
          errorText += item;
        }
        onError(errorText);
        return false;
      }
    }
  }

  @override
  FutureOr<AuthDTO?> signup(SignUpDTO body, {Function(String?)? onError}) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  FutureOr<Token?> loginGoogle() async {
    final account = await GoogleSignIn().signIn();
    final authentication = await account?.authentication;
    final googleAccessToken = authentication?.accessToken;

    if (googleAccessToken != null) return await _authRepo.loginGoogle(SocialToken(accessToken: googleAccessToken));

    return null;
  }

  @override
  FutureOr<Token?> loginFacebook() async {
    final LoginResult authentication = await FacebookAuth.instance.login();

    final facebookAccessToken = authentication.accessToken?.token;

    if (facebookAccessToken != null) return await _authRepo.loginFacebook(SocialToken(accessToken: facebookAccessToken));

    return null;
  }

  @override
  FutureOr<Token?> loginApple() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final appleToken = credential.identityToken;
    // TODO(Marina): uncomment when it will be needed
    // final appleAuth = credential.authorizationCode;

    if (appleToken != null) return await _authRepo.loginApple(SocialToken(accessToken: appleToken));

    return null;
  }
}
