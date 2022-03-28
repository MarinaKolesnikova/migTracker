import 'package:diplom_proj/src/auth/domain/bloc/auth_bloc.dart';
import 'package:diplom_proj/src/auth/domain/bloc/events/logout_event.dart';
import 'package:flutter/material.dart';

import 'package:provider/src/provider.dart';

class Logout {
  static void logoutAction(BuildContext context) {
    context.read<AuthBloc>().add(
          LogoutEvent(
            onLogoutCompleted: () {},
          ),
        );
  }
}
