import 'package:auto_route/auto_route.dart';
import 'package:bloc_calculator/app/locator.dart';
import 'package:bloc_calculator/blocs/simple_bloc_observer.dart';
import 'package:bloc_calculator/calculator_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_calculator/routes/router.gr.dart' as auto_route;

//FIXME
const color1 = Color.fromRGBO(131, 0, 255, 1);
const color2 = Color.fromRGBO(232, 170, 47, 1);
const color3 = Color.fromRGBO(0, 255, 255, 1);
const color4 = Color.fromRGBO(89, 232, 105, 1);
const color5 = Color.fromRGBO(255, 56, 160, 1);

void main() {
  setupLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator App',
        builder: ExtendedNavigator.builder<auto_route.Router>(
          router: auto_route.Router(),
          builder: (context, extendedNav) => Theme(
            data: CalculatorTheme(
              accent1: color1,
              background1: color2,
              isDark: true,
            ).themeData,
            child: extendedNav,
          ),
        ));
  }
}
