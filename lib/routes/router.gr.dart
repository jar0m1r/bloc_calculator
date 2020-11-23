// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/calculator/calculator_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String calculatorScreen = '/calculator-screen';
  static const all = <String>{
    splashScreen,
    calculatorScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.calculatorScreen, page: CalculatorScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    CalculatorScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalculatorScreen(),
        settings: data,
      );
    },
  };
}
