import 'package:bloc_calculator/blocs/calculation/calculation_bloc.dart';
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
  final Map<OperatorInputType, String> operatorInputTypeToString = {
    OperatorInputType.add: '+',
    OperatorInputType.subtract: '-',
    OperatorInputType.multiply: '+',
    OperatorInputType.divide: '/',
    OperatorInputType.equals: '=',
  };

  List<Widget> _getCalculationInputItems(List<String> items) {
    return items.map((item) {
      return CalculationInputItem(item);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculationBloc, CalculationState>(
      builder: (BuildContext context, CalculationState state) {
        final Calculation calc = (state as CalculationFirstOperand).calculation;
        final List<String> calcItems = [
          //! fixme
          calc?.firstOperand?.toString(),
          if (calc != null) operatorInputTypeToString[calc.operator],
          calc?.secondOperand.toString(),
        ]..removeWhere((element) => element == null);

        return Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.blue[100]),
            color: Colors.white,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: state is! CalculationBusy
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
