import 'package:auto_route/auto_route_annotations.dart';
import 'package:bloc_calculator/screens/calculator/calculator_screen.dart';
import 'package:bloc_calculator/screens/splash_screen/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: CalculatorScreen),
  ],
)
class $Router {}
