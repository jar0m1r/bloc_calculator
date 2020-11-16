import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/calculation/calculation.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc()
      : super(
          CalculatorReady(
            const Calculation(value1: 0),
          ),
        );

  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    if (event is ValueInput) {
      yield* _mapValueToState(event.value);
    } else if (event is OperatorInput) {
      yield* _mapOperatorToState(event.operatorType);
    }
  }

  Stream<CalculatorState> _mapValueToState(int value) async* {
    if (state is CalculatorReady) {
      final calculation = (state as CalculatorReady).calculation;
      if (calculation.operatorType == null) {
        yield CalculatorReady(calculation.copyWith(
            value1: calculation.value1 == 0.0
                ? value.toDouble()
                : double.tryParse('${calculation.value1}$value')));
      } else {
        yield CalculatorReady(
          calculation.copyWith(
            value2: calculation.value2 == 0.0 || calculation.value2 == null
                ? value.toDouble()
                : double.tryParse('${calculation.value2}$value'),
          ),
        );
      }
    }
  }

  Stream<CalculatorState> _mapOperatorToState(
      OperatorType operatorType) async* {
    if (state is CalculatorReady) {
      final calculation = (state as CalculatorReady).calculation;
      if (calculation.operatorType == null) {
        yield CalculatorReady(calculation.copyWith(operatorType: operatorType));
      }
    }
  }
}
