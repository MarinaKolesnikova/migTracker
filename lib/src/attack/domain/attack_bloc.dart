import 'package:diplom_proj/src/attack/data/services/attack_service.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:diplom_proj/config/modules/injection_config.dart';
import 'package:diplom_proj/src/shared/interfaces/i_bloc.dart';

export 'package:provider/src/provider.dart';

part 'attack_bloc.freezed.dart';
part 'attack_state.dart';

@lazySingleton
class AttackBloc extends IBloc<AttackState, IBlocEvent<AttackState>> {
  AttackBloc(
    this.attackService,
  ) : super(AttackState.initial());

  factory AttackBloc.byGetIt({GetIt? testGeIt}) {
    return AttackBloc(
      (testGeIt ?? getIt)<AttackService>(),
    );
  }

  final AttackService attackService;
}
