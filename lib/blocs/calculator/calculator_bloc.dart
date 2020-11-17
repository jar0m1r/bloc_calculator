import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc()
      : super(
          CalculatorInProgress(
            const StringCalculation(value1: '0'),
          ),
        );

  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    if (event is ValueInput) {
      yield* _mapValueToState(event.value);
    } else if (event is OperatorInput) {
      yield* _mapOperatorToState(event.operationType);
    }
  }

  Stream<CalculatorState> _mapValueToState(int value) async* {
    if (state is CalculatorInProgress) {
      final StringCalculation calculation =
          (state as CalculatorInProgress).calculation;

      if (calculation.operation == null) {
        yield CalculatorInProgress(
          calculation.copyWith(
            value1: calculation.value1 == '0'
                ? value.toString()
                : '${calculation.value1}$value',
          ),
        );
      } else {
        yield CalculatorInProgress(
          calculation.copyWith(
            value2: calculation.value2 == null
                ? value.toString()
                : '${calculation.value2}$value',
          ),
        );
      }
    }
  }

  Stream<CalculatorState> _mapOperatorToState(
      OperationType operationType) async* {
    if (state is CalculatorInProgress) {
      final calculation = (state as CalculatorInProgress).calculation;
      if (calculation.operation == null) {
        yield CalculatorInProgress(
            calculation.copyWith(operation: operationType));
      } else if (calculation.operation != null &&
          calculation.operation == OperationType.equals) {
        yield CalculatorFinished(calculation.copyWith(result: 'done')); //!
      }
    }
  }
}
