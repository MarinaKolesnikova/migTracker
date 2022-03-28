import 'dart:async';

import 'package:dio/dio.dart';
import 'package:diplom_proj/src/auth/entity/models/token/token.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc_event.dart';

import '../auth_bloc.dart';

enum SignInType {
  google,
  facebook,
  apple,
  email,
}

class SocialSignInEvent extends IBlocEvent<AuthState> {
  const SocialSignInEvent({
    required this.signInType,
    required this.onEventComplete,
  });

  final SignInType signInType;
  final VoidCallback onEventComplete;

  @override
  Stream<AuthState> action(covariant AuthBloc bloc) async* {
    yield bloc.state.copyWith(isLoading: true);

    final token = await _signIn(bloc);

    yield bloc.state.copyWith(isLoading: false);

    if (token != null) {
      await bloc.tokenStorage.save(token);

      onEventComplete();
    }
  }

  Future<Token?> _signIn(AuthBloc bloc) async {
    switch (signInType) {
      case SignInType.google:
        return await bloc.authService.loginGoogle();
      case SignInType.facebook:
        return await bloc.authService.loginFacebook();
      case SignInType.apple:
        return await bloc.authService.loginApple();
      case SignInType.email:
        break;
    }
  }
}
