import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_calculator/blocs/calculation/calculation.dart';
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

  final maxOperandValue = 1000;

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
        if (newFirstOperand <= maxOperandValue) {
          //! FIXME
          yield CalculationFirstOperand(
              calculation.copyWith(firstOperand: newFirstOperand));
        }
        break;
      case CalculationSecondOperand:
        final calculation = (state as CalculationSecondOperand).calculation;
        final newSecondOperand = int.tryParse(
            '${calculation.secondOperand?.toString() ?? ""}${valueInputTypeToInt[value].toString()}');
        if (newSecondOperand <= maxOperandValue) {
          yield CalculationSecondOperand(
              calculation.copyWith(secondOperand: newSecondOperand));
        }
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
          yield CalculationResult(result); //!
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
    } else if (value == ActionInputType.undo) {
      yield* _executeUndo(state);
    }
  }

  Stream<CalculationState> _executeUndo(CalculationState state) async* {
    if (state is CalculationFirstOperand) {
      final calculation = state.calculation;
      if (calculation.firstOperand != null && calculation.firstOperand > 9) {
        final String oldValueString = '${calculation.firstOperand}';
        final int newValue =
            int.parse(oldValueString.substring(0, oldValueString.length - 1));
        yield CalculationFirstOperand(
            calculation.copyWith(firstOperand: newValue));
      } else {
        yield CalculationFirstOperand(calculation.copyWith(firstOperand: 0));
      }
    } else if (state is CalculationSecondOperand) {
      final calculation = state.calculation;
      if (calculation.secondOperand != null && calculation.secondOperand > 9) {
        final String oldValueString = '${calculation.secondOperand}';
        final int newValue =
            int.parse(oldValueString.substring(0, oldValueString.length - 1));
        yield CalculationSecondOperand(
            calculation.copyWith(secondOperand: newValue));
      } else {
        yield CalculationSecondOperand(calculation.copyWith(secondOperand: 0));
      }
    } else {
      return;
    }
  }

  Calculation calculateResult(Calculation calc) {
    int result;
    int remainder = 0;

    switch (calc.operator) {
      case OperatorInputType.add:
        result = calc.firstOperand + calc.secondOperand;
        break;
      case OperatorInputType.subtract:
        result = calc.firstOperand - calc.secondOperand;
        break;
      case OperatorInputType.multiply:
        result = calc.firstOperand * calc.secondOperand;
        break;
      case OperatorInputType.divide:
        if (calc.secondOperand == 0) {
          result = null; //TODO kan niet bericht
          remainder = 0;
          break;
        }
        result = calc.firstOperand ~/ calc.secondOperand;
        remainder = calc.firstOperand % calc.secondOperand;
        break;
      default:
        result = 0; //!
        break;
    }

    return calc.copyWith(
      result: result,
      remainder: remainder,
    );
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
