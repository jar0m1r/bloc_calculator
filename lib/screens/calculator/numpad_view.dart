import 'package:bloc_calculator/blocs/calculator/calculator_bloc.dart';
import 'package:bloc_calculator/models/calculation/calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumpadView extends StatelessWidget {
  List<Widget> createNumpadItems(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
    return [
      NumpadItem<int>(7, '7'),
      NumpadItem<int>(8, '8'),
      NumpadItem<int>(9, '9'),
      NumpadItem<OperatorType>(OperatorType.add, '+'),
      NumpadItem<OperatorType>(OperatorType.subtract, '-'),
      NumpadItem<int>(4, '4'),
      NumpadItem<int>(5, '5'),
      NumpadItem<int>(6, '6'),
      NumpadItem<OperatorType>(OperatorType.multiply, 'x'),
      NumpadItem<OperatorType>(OperatorType.divide, ':'),
      NumpadItem<int>(1, '1'),
      NumpadItem<int>(2, '2'),
      NumpadItem<int>(3, '3'),
      NumpadItem<OperatorType>(OperatorType.none, ''),
      NumpadItem<OperatorType>(OperatorType.equals, '='),
      NumpadItem<OperatorType>(OperatorType.none, ''),
      NumpadItem<int>(0, '0'),
      NumpadItem<OperatorType>(OperatorType.none, ''),
      NumpadItem<OperatorType>(OperatorType.delete, '<'),
      NumpadItem<OperatorType>(OperatorType.clear, 'C'),
    ].map((item) {
      return OutlineButton(
        onPressed: () {
          if (item.value is int) {
            calculatorBloc.add(ValueInput(item.value as int));
          } else if (item.value is OperatorType &&
              item.value != OperatorType.none) {
            calculatorBloc.add(OperatorInput(item.value as OperatorType)); //!
          }
        },
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

class NumpadItem<T> {
  final T value;
  final String symbol;

  NumpadItem(this.value, this.symbol);
}
