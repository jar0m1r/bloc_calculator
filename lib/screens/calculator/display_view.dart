import 'package:bloc_calculator/blocs/calculator/calculator_bloc.dart';
import 'package:bloc_calculator/models/calculation/calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.pink[50],
      child: ListView(
        reverse: true,
        children: [
          CalculationView(),
        ],
      ),
    );
  }
}

class CalculationView extends StatelessWidget {
  List<Widget> _getCalculationInputItems(List<String> items) {
    return items.map((item) {
      return CalculationInputItem(item);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (BuildContext context, CalculatorState state) {
        final Calculation calc = (state as CalculatorReady).calculation;
        final List<String> calcItems = [
          //! fixme
          calc.value1?.toInt().toString(),
          if (calc != null) operatorTypeSymbol[calc.operatorType],
          calc.value2?.toInt()?.toString()
        ]..removeWhere((element) => element == null);

        return Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.blue[100]),
            color: Colors.white,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: state is CalculatorReady
                  ? _getCalculationInputItems(calcItems)
                  : [const CircularProgressIndicator()]),
        );
      },
    );
  }
}

class CalculationInputItem extends StatelessWidget {
  final bool showBig;
  final String value;

  const CalculationInputItem(this.value, {this.showBig = false});

  @override
  Widget build(BuildContext context) {
    return Text(value, style: TextStyle(fontSize: showBig ? 52 : 32));
  }
}
