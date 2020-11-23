import 'package:auto_route/auto_route.dart';
import 'package:bloc_calculator/blocs/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_calculator/routes/router.gr.dart' as auto_route;

void main() {
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
            data: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              fontFamily: 'Galindo',
            ),
            child: extendedNav,
          ),
        ));
  }
}
