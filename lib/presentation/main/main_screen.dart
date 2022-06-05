import 'package:auto_route/auto_route.dart';
import 'package:diplom_proj/config/app_router.gr.dart';
import 'package:diplom_proj/presentation/main/widgets/active_attack.dart';
import 'package:diplom_proj/presentation/main/widgets/attack_list.dart';
import 'package:diplom_proj/presentation/main/widgets/charts_panel.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/presentation/shared/widgets/prefered_size_container.dart';
import 'package:diplom_proj/presentation/shared/widgets/search_field/search_sliver_header_delegate.dart';

import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/fetch_tretments_symptoms_event.dart';

import 'package:diplom_proj/src/attack/domain/events/set_new_attack_event.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';

import 'package:diplom_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttackBloc, AttackState>(builder: (context, state) {
      final ongoingAttack = AttackModel.mock();
      //state.ongoingAttack;
      final additionalHeight = ongoingAttack != null ? 200.0 : 0;
      return MainLayout.withFocusLayout(
        floatingActionButton: getFloatingButton(context),
        child: Container(
          decoration: getContainerDecoration,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 270.0 + additionalHeight,
                bottom: PreferedSizeContainer(
                  isShadow: true,
                  height: 20.0,
                  color: LightColors.lightUndercover,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: ColoredBox(
                    color: LightColors.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: [
                          ChartsPanel(),
                          if (ongoingAttack != null) ActiveAttack(ongoingAttack: ongoingAttack),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: SearchSliverHeaderDelegate(),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                sliver: AttackList(),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget getFloatingButton(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: () {
        context.read<AttackBloc>().add(
          FetchTreatmentsSymptomsEvent(
            onCompleted: (() {
              context.read<AttackBloc>().add(
                SetNewAttackEvent(
                  onCompleted: (() {
                    context.pushRoute(AttackCreationRoute());
                  }),
                ),
              );
            }),
          ),
        );
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 1,
            colors: LightColors.onPanelIcon,
            tileMode: TileMode.mirror,
            stops: [0.5, 0.9],
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: Text(
            '+ Add',
            style: LightTextStyles.poppinsW700(
              color: LightColors.backgroundColor,
              fontSize: 11.0,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration get getContainerDecoration {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: LightColors.panelGradient,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.4, 0.9],
      ),
    );
  }
}
