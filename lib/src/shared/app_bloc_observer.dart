import 'package:logging/logging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  final Logger _logger = Logger('[AppBlocObserver]');

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _logger.info('<onCreate> -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.info('<onChange> -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.warning('<onError> -- ${bloc.runtimeType}');

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _logger.info('<onClose> -- ${bloc.runtimeType}');
  }
}
