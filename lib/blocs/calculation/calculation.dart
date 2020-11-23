import 'package:bloc_calculator/blocs/calculation/calculation_bloc.dart'; //FIXME bad dependency

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
    this.remainder = 0, // FIXME donb't set default here
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
