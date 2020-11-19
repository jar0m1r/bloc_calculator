import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculation_event.dart';
part 'calculation_state.dart';

class CalculationBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculationBloc()
      : super(
          const CalculationFirstOperand(
            Calculation(),
          ),
        );

  @override
  Stream<CalculationState> mapEventToState(
    CalculationEvent event,
  ) async* {
    if (event is ValueInput) {
      yield* _mapValueToState(event.input);
    } else if (event is OperatorInput) {
      yield* _mapOperatorToState(event.input);
    } else if (event is ActionInput) {
      yield* _mapActionToState(event.input);
    }
  }

  Stream<CalculationState> _mapValueToState(ValueInputType value) async* {
    switch (state.runtimeType) {
      case CalculationFirstOperand:
        final calculation = (state as CalculationFirstOperand).calculation;
        final newFirstOperand = int.tryParse(
            '${calculation.firstOperand.toString()}${valueInputTypeToInt[value].toString()}');
        yield CalculationFirstOperand(
            calculation.copyWith(firstOperand: newFirstOperand));
        break;
      case CalculationSecondOperand:
        final calculation = (state as CalculationSecondOperand).calculation;
        final newSecondOperand = int.tryParse(
            '${calculation.secondOperand?.toString() ?? ""}${valueInputTypeToInt[value].toString()}');
        yield CalculationSecondOperand(
            calculation.copyWith(secondOperand: newSecondOperand));
        break;
      case CalculationResult:
        yield CalculationFirstOperand(
            Calculation(firstOperand: valueInputTypeToInt[value]));
        break;
      default:
        break;
    }
  }

  Stream<CalculationState> _mapOperatorToState(OperatorInputType value) async* {
    switch (state.runtimeType) {
      case CalculationFirstOperand:
        if (value != OperatorInputType.equals) {
          final calculation = (state as CalculationFirstOperand).calculation;
          yield CalculationSecondOperand(calculation.copyWith(operator: value));
        }
        break;
      case CalculationSecondOperand:
        if (value == OperatorInputType.equals) {
          final calculation = (state as CalculationSecondOperand).calculation;
          final result =
              calculateResult(calculation); //calculation in this class???
          yield CalculationResult(calculation.copyWith(result: result)); //!
        }
        break;
      case CalculationResult:
        break;
      default:
        break;
    }
  }

  Stream<CalculationState> _mapActionToState(ActionInputType value) async* {
    if (value == ActionInputType.clear) {
      yield const CalculationFirstOperand(Calculation());
    }
  }

  double calculateResult(Calculation calc) {
    switch (calc.operator) {
      case OperatorInputType.add:
        return (calc.firstOperand + calc.secondOperand).toDouble();
        break;
      case OperatorInputType.subtract:
        return (calc.firstOperand - calc.secondOperand).toDouble();
        break;
      case OperatorInputType.multiply:
        return (calc.firstOperand * calc.secondOperand).toDouble();
      case OperatorInputType.divide:
        assert(calc.secondOperand != 0);
        return (calc.firstOperand / calc.secondOperand).toDouble();
        break;
      default:
        return 0.0; //!
        break;
    }
  }

  final Map<ValueInputType, int> valueInputTypeToInt = {
    ValueInputType.zero: 0,
    ValueInputType.one: 1,
    ValueInputType.two: 2,
    ValueInputType.three: 3,
    ValueInputType.four: 4,
    ValueInputType.five: 5,
    ValueInputType.six: 6,
    ValueInputType.seven: 7,
    ValueInputType.eight: 8,
    ValueInputType.nine: 9,
  };
}
