// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/calculator/calculator_screen.dart';

class Routes {
  static const String calculatorScreen = '/';
  static const all = <String>{
    calculatorScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.calculatorScreen, page: CalculatorScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CalculatorScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalculatorScreen(),
        settings: data,
      );
    },
  };
}
