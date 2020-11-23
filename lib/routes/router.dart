import 'package:auto_route/auto_route_annotations.dart';
import 'package:bloc_calculator/screens/calculator/calculator_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: CalculatorScreen, initial: true),
  ],
)
class $Router {}
