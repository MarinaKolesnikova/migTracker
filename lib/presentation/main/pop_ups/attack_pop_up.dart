import 'package:diplom_proj/config/modules/injection_config.dart';
import 'package:diplom_proj/presentation/pop_up/general/list_button_dialog.dart';
import 'package:diplom_proj/presentation/pop_up/general/two_buttons_dialog/two_buttons_widget.dart';
import 'package:flutter/material.dart';

class AttackPopUp {
  AttackPopUp._();
  static TwoButtonDialog submitAttack(BuildContext context) {
    return TwoButtonDialog(
      title: 'Do you want to submit attack?',
      acceptText: 'Yes',
      declineText: 'No',
      onAccept: () {
        context.popRoute();
      },
      onDecline: () {
        context.popRoute();
      },
    );
  }

  static ListButtonDialog toPdfPopUp(BuildContext context) {
    return ListButtonDialog(title: 'Select period', actions: [
      ListButtonActionModel(
        title: 'Current month',
        action: () {
          context.popRoute();
        },
      ),
      ListButtonActionModel(
        title: 'Chosen month',
        action: () {
          context.popRoute();
        },
      ),
      ListButtonActionModel(
        title: 'All year',
        action: () {
          context.popRoute();
        },
      ),
    ]);
  }
}
