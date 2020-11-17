import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'calculation.freezed.dart';

enum OperatorType {
  add,
  subtract,
  multiply,
  divide,
}

@freezed
abstract class Calculation with _$Calculation {
  const factory Calculation({
    OperatorType operatorType,
    double value1,
    double value2,
    double result,
  }) = _Calculation;
}
