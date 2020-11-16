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
  final OperatorType operatorType;

  OperatorInput(this.operatorType);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is OperatorInput && o.operatorType == operatorType;
  }

  @override
  int get hashCode => operatorType.hashCode;

  @override
  String toString() => 'OperatorInput(operatorType: $operatorType)';
}
