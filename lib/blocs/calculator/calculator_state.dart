part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorState {}

class CalculatorBusy extends CalculatorState {}

class CalculatorReady extends CalculatorState {
  final Calculation calculation;

  CalculatorReady(this.calculation);

  @override
  String toString() => 'CalculatorReady(_calculation: $calculation)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CalculatorReady && o.calculation == calculation;
  }

  @override
  int get hashCode => calculation.hashCode;

  CalculatorReady copyWith({
    Calculation calculation,
  }) {
    return CalculatorReady(
      calculation ?? this.calculation,
    );
  }
}
