// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i12;

import '../presentation/additional/screen_in_develop.dart' as _i3;
import '../presentation/additional/splash_screen.dart' as _i1;
import '../presentation/advices/advices_screen.dart' as _i7;
import '../presentation/attack_creation/attack_creation.dart' as _i11;
import '../presentation/authorization/authorization_screen.dart' as _i2;
import '../presentation/calendar/calendar_screen.dart' as _i6;
import '../presentation/home/home_screen.dart' as _i4;
import '../presentation/main/main_screen.dart' as _i10;
import '../presentation/predictions/prediction_screen.dart' as _i8;
import '../presentation/settings/settings_screen.dart' as _i9;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AuthorizationScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthorizationScreen());
    },
    ScreenInDevelopRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ScreenInDevelop());
    },
    HomePageScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePageScreen());
    },
    MainScreenRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    CalendarScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.CalendarScreen(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    AdviceScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AdviceScreenRouteArgs>(
          orElse: () => const AdviceScreenRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.AdviceScreen(key: args.key));
    },
    PredictionScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PredictionScreenRouteArgs>(
          orElse: () => const PredictionScreenRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.PredictionScreen(key: args.key));
    },
    SettingsScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SettingsScreen());
    },
    MainScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MainScreen());
    },
    AttackCreationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.AttackCreation());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splash_screen', fullMatch: true),
        _i5.RouteConfig(SplashScreenRoute.name, path: 'splash_screen'),
        _i5.RouteConfig(AuthorizationScreenRoute.name, path: 'auth_screen'),
        _i5.RouteConfig(ScreenInDevelopRoute.name, path: 'screen_in_develop'),
        _i5.RouteConfig(HomePageScreenRoute.name,
            path: 'home_screen',
            children: [
              _i5.RouteConfig(MainScreenRouter.name,
                  path: 'main_screen',
                  parent: HomePageScreenRoute.name,
                  children: [
                    _i5.RouteConfig(MainScreenRoute.name,
                        path: '', parent: MainScreenRouter.name),
                    _i5.RouteConfig(AttackCreationRoute.name,
                        path: 'advices_screen', parent: MainScreenRouter.name)
                  ]),
              _i5.RouteConfig(CalendarScreenRoute.name,
                  path: 'calendar_screen', parent: HomePageScreenRoute.name),
              _i5.RouteConfig(AdviceScreenRoute.name,
                  path: 'advices_screen', parent: HomePageScreenRoute.name),
              _i5.RouteConfig(PredictionScreenRoute.name,
                  path: 'predictions_screen', parent: HomePageScreenRoute.name),
              _i5.RouteConfig(SettingsScreenRoute.name,
                  path: 'settings_screen', parent: HomePageScreenRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(SplashScreenRoute.name, path: 'splash_screen');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.AuthorizationScreen]
class AuthorizationScreenRoute extends _i5.PageRouteInfo<void> {
  const AuthorizationScreenRoute()
      : super(AuthorizationScreenRoute.name, path: 'auth_screen');

  static const String name = 'AuthorizationScreenRoute';
}

/// generated route for
/// [_i3.ScreenInDevelop]
class ScreenInDevelopRoute extends _i5.PageRouteInfo<void> {
  const ScreenInDevelopRoute()
      : super(ScreenInDevelopRoute.name, path: 'screen_in_develop');

  static const String name = 'ScreenInDevelopRoute';
}

/// generated route for
/// [_i4.HomePageScreen]
class HomePageScreenRoute extends _i5.PageRouteInfo<void> {
  const HomePageScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(HomePageScreenRoute.name,
            path: 'home_screen', initialChildren: children);

  static const String name = 'HomePageScreenRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class MainScreenRouter extends _i5.PageRouteInfo<void> {
  const MainScreenRouter({List<_i5.PageRouteInfo>? children})
      : super(MainScreenRouter.name,
            path: 'main_screen', initialChildren: children);

  static const String name = 'MainScreenRouter';
}

/// generated route for
/// [_i6.CalendarScreen]
class CalendarScreenRoute extends _i5.PageRouteInfo<void> {
  const CalendarScreenRoute()
      : super(CalendarScreenRoute.name, path: 'calendar_screen');

  static const String name = 'CalendarScreenRoute';
}

/// generated route for
/// [_i7.AdviceScreen]
class AdviceScreenRoute extends _i5.PageRouteInfo<AdviceScreenRouteArgs> {
  AdviceScreenRoute({_i12.Key? key})
      : super(AdviceScreenRoute.name,
            path: 'advices_screen', args: AdviceScreenRouteArgs(key: key));

  static const String name = 'AdviceScreenRoute';
}

class AdviceScreenRouteArgs {
  const AdviceScreenRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'AdviceScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.PredictionScreen]
class PredictionScreenRoute
    extends _i5.PageRouteInfo<PredictionScreenRouteArgs> {
  PredictionScreenRoute({_i12.Key? key})
      : super(PredictionScreenRoute.name,
            path: 'predictions_screen',
            args: PredictionScreenRouteArgs(key: key));

  static const String name = 'PredictionScreenRoute';
}

class PredictionScreenRouteArgs {
  const PredictionScreenRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'PredictionScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.SettingsScreen]
class SettingsScreenRoute extends _i5.PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(SettingsScreenRoute.name, path: 'settings_screen');

  static const String name = 'SettingsScreenRoute';
}

/// generated route for
/// [_i10.MainScreen]
class MainScreenRoute extends _i5.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i11.AttackCreation]
class AttackCreationRoute extends _i5.PageRouteInfo<void> {
  const AttackCreationRoute()
      : super(AttackCreationRoute.name, path: 'advices_screen');

  static const String name = 'AttackCreationRoute';
}
