import 'package:diplom_proj/presentation/home/widgets/light_tab_bar.dart';
import 'package:diplom_proj/presentation/settings/settings_screen.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/set_current_date_event.dart';
import 'package:diplom_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:diplom_proj/config/modules/injection_config.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (appContext, appState) {
        return BlocProvider(
          create: (context) => initAttack(),
          child: AutoTabsScaffold(
            backgroundColor: LightColors.backgroundColor,
            routes: [
              MainScreenRouter(),
              CalendarScreenRoute(),
              AdviceScreenRoute(),
              PredictionScreenRoute(),
              SettingsScreenRoute(),
            ],
            bottomNavigationBuilder: (_, tabsRouter) {
              return LightTabBar(tabsRouter: tabsRouter);
            },
          ),
        );
      },
    );
  }

  AttackBloc initAttack() {
    return AttackBloc.byGetIt()..add(SetCurrentDateEvent(selectedDate: DateTime.now()));
  }
}
