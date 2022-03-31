import 'dart:async';

import 'package:flutter/material.dart';

import 'package:diplom_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:diplom_proj/src/auth/entity/models/token/token.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

import '../auth_bloc.dart';

class LoginEvent extends IBlocEvent<AuthState> {
  const LoginEvent({
    required this.email,
    required this.password,
    required this.onLoginCompleted,
    this.onError,
  });

  final String email;
  final String password;
  final VoidCallback? onLoginCompleted;

  final Function(String? errorText)? onError;

  @override
  Stream<AuthState> action(covariant AuthBloc bloc) async* {
    try {
      final bool isTest = email == 'test.account@light-it.net' && password == 'ZOB1c0XaHZ0hcixpPPAC';

      yield bloc.state.copyWith(isLoading: true);

      final Token? token = await bloc.authService.login(
        LoginDTO(email: email, password: password),
        onError: onError,
        isTest: isTest,
      );

      if (token?.accessToken != null) {
        await bloc.tokenStorage.save(
          Token(
            accessToken: token!.accessToken!,
            isTest: isTest,
          ),
        );

        yield bloc.state.copyWith(isLoading: false);

        onLoginCompleted?.call();
      }
    } catch (e) {
      yield bloc.state.copyWith(isLoading: false);
    }
  }
}
