// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../presentation/additional/screen_in_develop.dart' as _i5;
import '../presentation/additional/splash_screen.dart' as _i3;
import '../presentation/authorization/authorization_screen.dart' as _i4;
import '../presentation/home/home_screen.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    AuthorizationScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AuthorizationScreen();
        }),
    ScreenInDevelopRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.ScreenInDevelop();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false),
    HomePageScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.HomePageScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splash_screen', fullMatch: true),
        _i1.RouteConfig(SplashScreenRoute.name, path: 'splash_screen'),
        _i1.RouteConfig(AuthorizationScreenRoute.name, path: 'auth_screen'),
        _i1.RouteConfig(ScreenInDevelopRoute.name, path: 'screen_in_develop'),
        _i1.RouteConfig(HomePageScreenRoute.name,
            path: 'home_screen',
            children: [
              _i1.RouteConfig(ScreenInDevelopRoute.name,
                  path: 'screen_in_develop')
            ])
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: 'splash_screen');

  static const String name = 'SplashScreenRoute';
}

class AuthorizationScreenRoute extends _i1.PageRouteInfo {
  const AuthorizationScreenRoute() : super(name, path: 'auth_screen');

  static const String name = 'AuthorizationScreenRoute';
}

class ScreenInDevelopRoute extends _i1.PageRouteInfo {
  const ScreenInDevelopRoute() : super(name, path: 'screen_in_develop');

  static const String name = 'ScreenInDevelopRoute';
}

class HomePageScreenRoute extends _i1.PageRouteInfo {
  const HomePageScreenRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home_screen', initialChildren: children);

  static const String name = 'HomePageScreenRoute';
}
