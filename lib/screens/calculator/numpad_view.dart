import 'package:bloc_calculator/blocs/calculation/calculation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumpadItem<T> {
  final T value;
  final String symbol;

  NumpadItem(this.value, this.symbol);

  CalculationEvent get event {
    switch (value.runtimeType) {
      case ValueInputType:
        return ValueInput(value as ValueInputType);
        break;
      case OperatorInputType:
        return OperatorInput(value as OperatorInputType);
        break;
      case ActionInputType:
        return ActionInput(value as ActionInputType);
        break;
      default:
        return null;
    }
  }
}

class NumpadView extends StatelessWidget {
  final List<NumpadItem> inputTypeSymbols = [
    NumpadItem(ValueInputType.seven, '7'),
    NumpadItem(ValueInputType.eight, '8'),
    NumpadItem(ValueInputType.nine, '9'),
    NumpadItem(OperatorInputType.add, '+'),
    NumpadItem(OperatorInputType.subtract, '-'),
    NumpadItem(ValueInputType.four, '4'),
    NumpadItem(ValueInputType.five, '5'),
    NumpadItem(ValueInputType.six, '6'),
    NumpadItem(OperatorInputType.multiply, 'x'),
    NumpadItem(OperatorInputType.divide, ':'),
    NumpadItem(ValueInputType.one, '1'),
    NumpadItem(ValueInputType.two, '2'),
    NumpadItem(ValueInputType.three, '3'),
    NumpadItem(ActionInputType.none, ''),
    NumpadItem(OperatorInputType.equals, '='),
    NumpadItem(ActionInputType.none, ''),
    NumpadItem(ValueInputType.zero, '0'),
    NumpadItem(ActionInputType.none, ''),
    NumpadItem(ActionInputType.undo, '<'),
    NumpadItem(ActionInputType.clear, 'C'),
  ];

  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculationBloc>(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.width / 5) * 4,
      child: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        children: inputTypeSymbols.map((numpadItem) {
          return OutlineButton(
            onPressed: () => calculatorBloc.add(numpadItem.event),
            child: Center(
              child: Text(
                numpadItem.symbol,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
