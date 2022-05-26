import 'package:auto_route/auto_route.dart';
import 'package:diplom_proj/presentation/additional/screen_in_develop.dart';
import 'package:diplom_proj/presentation/additional/splash_screen.dart';
import 'package:diplom_proj/presentation/attack_creation/attack_creation.dart';
import 'package:diplom_proj/presentation/authorization/authorization_screen.dart';
import 'package:diplom_proj/presentation/calendar/calendar_screen.dart';

import 'package:diplom_proj/presentation/home/home_screen.dart';
import 'package:diplom_proj/presentation/main/main_screen.dart';
import 'package:diplom_proj/resources/app_routes.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
      path: AppRoutes.splashScreen,
    ),
    AutoRoute(
      page: AuthorizationScreen,
      path: AppRoutes.authScreen,
    ),
    AutoRoute(
      page: ScreenInDevelop,
      path: AppRoutes.screenInDevelop,
    ),
    AutoRoute(
      page: HomePageScreen,
      path: AppRoutes.homeScreen,
      children: [
        AutoRoute(
          path: AppRoutes.mainScreen,
          name: AppRoutes.mainScreenName,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: MainScreen,
              initial: true,
              path: '',
            ),
            AutoRoute(
              page: AttackCreation,
              path: AppRoutes.attackCreationScreen,
            ),
          ],
        ),
        CustomRoute(
          page: CalendarScreen,
          path: AppRoutes.calendarScreen,
          durationInMilliseconds: 300,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(
          page: ScreenInDevelop,
          path: AppRoutes.screenInDevelop,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
