import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_calculator/app/locator.config.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() => $initGetIt(locator);
