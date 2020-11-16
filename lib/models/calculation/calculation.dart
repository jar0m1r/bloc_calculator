import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'calculation.freezed.dart';

enum OperatorType {
  none,
  add,
  subtract,
  multiply,
  divide,
  equals,
  delete,
  clear,
}

//! calculator functions like delete, clear, none, and even equals should not be here. Very narrow calculatorView model/domain

extension OperatorEx on OperatorType {
  String get inString => describeEnum(this);
}

Map<OperatorType, String> operatorTypeSymbol = {
  OperatorType.none: '',
  OperatorType.add: '+',
  OperatorType.subtract: '-',
  OperatorType.multiply: 'x',
  OperatorType.divide: '/',
  OperatorType.equals: '=',
  OperatorType.delete: '<',
  OperatorType.clear: 'C',
};

//! Non of this non model sjizzle should be here. ;-)

@freezed
abstract class Calculation with _$Calculation {
  const factory Calculation({
    OperatorType operatorType,
    double value1,
    double value2,
    double result,
  }) = _Calculation;
}
