part of 'calculation_bloc.dart';

@immutable
abstract class CalculationState {
  const CalculationState();
}

class CalculationBusy extends CalculationState {
  const CalculationBusy();
}

class CalculationFirstOperand extends CalculationState {
  final Calculation calculation;

  const CalculationFirstOperand(this.calculation);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CalculationFirstOperand && o.calculation == calculation;
  }

  @override
  int get hashCode => calculation.hashCode;

  @override
  String toString() => 'CalculationFirstOperand(calculation: $calculation)';
}

class CalculationSecondOperand extends CalculationState {
  final Calculation calculation;

  const CalculationSecondOperand(this.calculation);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CalculationSecondOperand && o.calculation == calculation;
  }

  @override
  int get hashCode => calculation.hashCode;

  @override
  String toString() => 'CalculationSecondOperand(calculation: $calculation)';
}

class CalculationResult extends CalculationState {
  final Calculation calculation;

  const CalculationResult(this.calculation);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CalculationResult && o.calculation == calculation;
  }

  @override
  int get hashCode => calculation.hashCode;

  @override
  String toString() => 'CalculationResult(calculation: $calculation)';
}
