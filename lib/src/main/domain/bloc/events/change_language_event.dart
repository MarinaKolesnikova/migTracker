import 'dart:async';

import 'package:diplom_proj/src/main/domain/bloc/app_bloc.dart';

import 'package:flutter/material.dart';

class ChangeLanguageEvent extends AppEvent {
  const ChangeLanguageEvent({required this.locale});

  final String locale;

  @override
  Stream<AppState> action(covariant AppBloc bloc) async* {
    final settings = await bloc.settingStorage.take();
    if (settings != null) {
      if ('en' == locale)
        yield bloc.state.copyWith(
          locale: Locale('ua'),
        );
      else {
        yield bloc.state.copyWith(
          locale: Locale('en'),
        );
      }
    }
  }
}
