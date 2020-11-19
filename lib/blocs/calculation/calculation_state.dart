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

class Calculation {
  final int firstOperand;
  final int secondOperand;
  final OperatorInputType operator;
  final int result;
  final int remainder;

  const Calculation({
    this.firstOperand = 0,
    this.secondOperand,
    this.operator,
    this.result,
    this.remainder = 0, // FIXME not here
  });

  Calculation copyWith({
    int firstOperand,
    int secondOperand,
    OperatorInputType operator,
    int result,
    int remainder,
  }) {
    return Calculation(
      firstOperand: firstOperand ?? this.firstOperand,
      secondOperand: secondOperand ?? this.secondOperand,
      operator: operator ?? this.operator,
      result: result ?? this.result,
      remainder: remainder ?? this.remainder,
    );
  }

  @override
  String toString() {
    return 'Calculation(firstOperand: $firstOperand, secondOperand: $secondOperand, operator: $operator, result: $result, remainder: $remainder)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Calculation &&
        o.firstOperand == firstOperand &&
        o.secondOperand == secondOperand &&
        o.operator == operator &&
        o.result == result &&
        o.remainder == remainder;
  }

  @override
  int get hashCode {
    return firstOperand.hashCode ^
        secondOperand.hashCode ^
        operator.hashCode ^
        result.hashCode ^
        remainder.hashCode;
  }
}
