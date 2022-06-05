import 'package:diplom_proj/src/advices/entities/advice_dto/advice_dto.dart';
import 'package:diplom_proj/src/attack/data/services/attack_service.dart';
import 'package:diplom_proj/src/predictions/entities/prediction_weather/prediction_weather.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:diplom_proj/config/modules/injection_config.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

export 'package:provider/src/provider.dart';

part 'prediction_bloc.freezed.dart';
part 'prediction_state.dart';

@lazySingleton
class PredictionBloc extends IBloc<PredictionState, IBlocEvent<PredictionState>> {
  PredictionBloc(
    this.attackService,
  ) : super(PredictionState.initial());

  factory PredictionBloc.byGetIt({GetIt? testGeIt}) {
    return PredictionBloc(
      (testGeIt ?? getIt)<AttackService>(),
    );
  }

  final AttackService attackService;
}
