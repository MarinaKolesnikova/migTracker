import 'package:diplom_proj/src/advices/entities/advice_dto/advice_dto.dart';
import 'package:diplom_proj/src/attack/data/services/attack_service.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:diplom_proj/config/modules/injection_config.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

export 'package:provider/src/provider.dart';

part 'advice_bloc.freezed.dart';
part 'advice_state.dart';

@lazySingleton
class AdviceBloc extends IBloc<AdviceState, IBlocEvent<AdviceState>> {
  AdviceBloc(
    this.attackService,
  ) : super(AdviceState.initial());

  factory AdviceBloc.byGetIt({GetIt? testGeIt}) {
    return AdviceBloc(
      (testGeIt ?? getIt)<AttackService>(),
    );
  }

  final AttackService attackService;
}
