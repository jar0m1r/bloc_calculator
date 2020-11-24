import 'package:auto_route/auto_route.dart';
import 'package:bloc_calculator/blocs/simple_bloc_observer.dart';
import 'package:bloc_calculator/calculator_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_calculator/routes/router.gr.dart' as auto_route;

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final color1 = const Color.fromRGBO(131, 0, 255, 1);
  final color2 = const Color.fromRGBO(232, 170, 47, 1);
  final color3 = const Color.fromRGBO(0, 255, 255, 1);
  final color4 = const Color.fromRGBO(89, 232, 105, 1);
  final color5 = const Color.fromRGBO(255, 56, 160, 1);

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
            // data: ThemeData(
            //   brightness: Brightness.light,
            //   primarySwatch: Colors.blue,
            //   visualDensity: VisualDensity.adaptivePlatformDensity,
            //   fontFamily: 'Galindo',
            // ),
            child: extendedNav,
          ),
        ));
  }
}
