import 'dart:async';

import 'package:diplom_proj/src/main/domain/bloc/app_bloc.dart';

enum CompleteStatus {
  hasToken,
  none,
}

class InitAppEvent extends AppEvent {
  const InitAppEvent({required this.onInitializeComplete});

  final void Function(CompleteStatus completeStatus) onInitializeComplete;

  @override
  Stream<AppState> action(covariant AppBloc bloc) async* {
    await bloc.storage.init();

    final token = await bloc.tokenStorage.take();
    bloc.logger.info('TOKEN $token');
    final settings = await bloc.settingStorage.take();
    if (settings != null) {
      //add here language changes
    }
    try {
      await Future.delayed(const Duration(seconds: 2000));
      onInitializeComplete(token != null ? CompleteStatus.hasToken : CompleteStatus.none);

      yield bloc.state.copyWith(
        appLoaded: bloc.state.appLoaded..complete(),
      );
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
