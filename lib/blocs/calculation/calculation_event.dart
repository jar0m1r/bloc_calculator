part of 'calculation_bloc.dart';

@immutable
abstract class CalculationEvent {}

class ValueInput extends CalculationEvent {
  final ValueInputType input;

  ValueInput(this.input);

  @override
  String toString() => 'ValueInput(input: $input)';
}

class OperatorInput extends CalculationEvent {
  final OperatorInputType input;

  OperatorInput(this.input);

  @override
  String toString() => 'OperatorInput(input: $input)';
}

class ActionInput extends CalculationEvent {
  final ActionInputType input;

  ActionInput(this.input);

  @override
  String toString() => 'ActionInput(input: $input)';
}

enum OperatorInputType { add, subtract, multiply, divide, equals }

enum ActionInputType { none, undo, clear }

enum ValueInputType {
  dot,
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine
}
