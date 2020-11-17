part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorState {}

class CalculatorBusy extends CalculatorState {}

class CalculatorInProgress extends CalculatorState {
  final StringCalculation calculation;

  CalculatorInProgress(this.calculation);

  CalculatorInProgress copyWith({
    StringCalculation calculation,
  }) {
    return CalculatorInProgress(
      calculation ?? this.calculation,
    );
  }

  @override
  String toString() => 'CalculatorInProgress(calculation: $calculation)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CalculatorInProgress && o.calculation == calculation;
  }

  @override
  int get hashCode => calculation.hashCode;
}

class CalculatorFinished extends CalculatorState {
  final StringCalculation calculation;

  CalculatorFinished(this.calculation);

  @override
  String toString() => 'CalculatorFinished(calculation: $calculation)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CalculatorFinished && o.calculation == calculation;
  }

  @override
  int get hashCode => calculation.hashCode;
}

class StringCalculation {
  final String value1;
  final String value2;
  final OperationType operation;
  final String result;

  const StringCalculation(
      {this.value1, this.value2, this.operation, this.result});

  StringCalculation copyWith({
    String value1,
    String value2,
    OperationType operation,
    String result,
  }) {
    return StringCalculation(
      value1: value1 ?? this.value1,
      value2: value2 ?? this.value2,
      operation: operation ?? this.operation,
      result: result ?? this.result,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is StringCalculation &&
        o.value1 == value1 &&
        o.value2 == value2 &&
        o.operation == operation &&
        o.result == result;
  }

  @override
  int get hashCode {
    return value1.hashCode ^
        value2.hashCode ^
        operation.hashCode ^
        result.hashCode;
  }
}

enum OperationType {
  add,
  subtract,
  multiply,
  divide,
  delete,
  none,
  clear,
  equals,
}

Map<OperationType, String> operatorTypeSymbol = {
  OperationType.add: '+',
  OperationType.subtract: '-',
  OperationType.multiply: 'x',
  OperationType.divide: ':',
  OperationType.none: '',
  OperationType.equals: '=',
  OperationType.delete: '<',
  OperationType.clear: 'C',
};
