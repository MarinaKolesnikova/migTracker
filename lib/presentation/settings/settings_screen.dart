import 'package:diplom_proj/config/modules/injection_config.dart';
import 'package:diplom_proj/presentation/settings/widgets/edit_button.dart';
import 'package:diplom_proj/presentation/settings/widgets/settings_block.dart';
import 'package:diplom_proj/presentation/settings/widgets/settings_item.dart';
import 'package:diplom_proj/presentation/shared/widgets/app_bar/light_app_bar.dart';
import 'package:diplom_proj/presentation/shared/widgets/light_toogle_switch/light_toogle_switch.dart';
import 'package:diplom_proj/resources/dictionary/data/settings_screen/settings_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/auth/domain/bloc/auth_bloc.dart';
import 'package:diplom_proj/src/auth/domain/bloc/events/logout_event.dart';
import 'package:diplom_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:diplom_proj/src/main/domain/bloc/events/change_language_event.dart';
import 'package:diplom_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SettingsDictionary dict = dictionaryManager.getSelectedData.settings;

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MainLayout(
          appBar: LightAppBar(
            label: dict.settingsLabel,
            leftPadding: 30.0,
            rightSideWidget: LogoutButton(),
          ),
          child: ListView(
            children: [
              SettingsBlock(
                blocLabel: dict.language,
                child: SettingItem(
                  label: dict.language,
                  child: LightToogleSwitch(
                    label1: dict.ua,
                    label2: dict.en,
                    onToggle: (index) => onSwitch(index, context),
                    fgColor1: LightColors.blueIt,
                    fgColor2: LightColors.blueIt,
                    textColor: LightColors.white,
                    curIndex: state.locale == Locale('en') ? 0 : 1,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void onLogoutTap(BuildContext context) {
    context.read<AuthBloc>().add(
      LogoutEvent(
        onLogoutCompleted: () {
          context.router.pushAndPopUntil(
            AuthorizationScreenRoute(),
            predicate: (Route<dynamic> route) => false,
          );
        },
      ),
    );
  }

  void onSwitch(int? index, BuildContext context) {
    context.read<AppBloc>().add(ChangeLanguageEvent(locale: index == 0 ? 'en' : 'ua'));
  }
}
