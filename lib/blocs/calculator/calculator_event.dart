part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class ValueInput extends CalculatorEvent {
  final int value;

  ValueInput(this.value);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueInput && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueInput(value: $value)';
}

class OperatorInput extends CalculatorEvent {
  final OperationType operationType;

  OperatorInput(this.operationType);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is OperatorInput && o.operationType == operationType;
  }

  @override
  int get hashCode => operationType.hashCode;

  @override
  String toString() => 'OperatorInput(operatorType: $operationType)';
}
