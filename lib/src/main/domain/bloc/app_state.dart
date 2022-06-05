part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required Completer appLoaded,
    required bool connectionTrigger,
    Locale? locale,
  }) = _AppState;

  factory AppState.initial() {
    return AppState(
      locale: Locale('en'),
      appLoaded: Completer(),
      connectionTrigger: false,
    );
  }
}
