import 'package:bloc_calculator/blocs/calculator/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumpadItem<T> {
  final T value;
  final String symbol;

  NumpadItem(this.value, this.symbol);

  CalculatorEvent get event {
    if (value is int) {
      return ValueInput(value as int);
    } else if (value is OperationType) {
      return OperatorInput(value as OperationType);
    }
    return null;
  }
}

class NumpadView extends StatelessWidget {
  final numpadItemMap = <NumpadItem>[
    NumpadItem<int>(7, '7'),
    NumpadItem<int>(8, '8'),
    NumpadItem<int>(9, '9'),
    NumpadItem<OperationType>(OperationType.add, '+'),
    NumpadItem<OperationType>(OperationType.subtract, '-'),
    NumpadItem<int>(4, '4'),
    NumpadItem<int>(5, '5'),
    NumpadItem<int>(6, '6'),
    NumpadItem<OperationType>(OperationType.multiply, 'x'),
    NumpadItem<OperationType>(OperationType.divide, ':'),
    NumpadItem<int>(1, '1'),
    NumpadItem<int>(2, '2'),
    NumpadItem<int>(3, '3'),
    NumpadItem<OperationType>(OperationType.none, ''),
    NumpadItem<OperationType>(OperationType.equals, '='),
    NumpadItem<OperationType>(OperationType.none, ''),
    NumpadItem<int>(0, '0'),
    NumpadItem<OperationType>(OperationType.none, ''),
    NumpadItem<OperationType>(OperationType.delete, '<'),
    NumpadItem<OperationType>(OperationType.clear, 'C'),
  ];

  List<Widget> createNumpadItems(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
    return numpadItemMap.map((item) {
      return OutlineButton(
        onPressed: () => calculatorBloc.add(item.event),
        child: Center(
          child: Text(
            item.symbol,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.width / 5) * 4,
      child: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        children: createNumpadItems(context),
      ),
    );
  }
}
