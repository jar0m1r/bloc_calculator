import 'package:bloc_calculator/blocs/calculation/calculation_bloc.dart';
import 'package:bloc_calculator/blocs/vector_sheet/vector_sheet_bloc.dart';
import 'package:bloc_calculator/screens/calculator/display_view.dart';
import 'package:bloc_calculator/screens/calculator/numpad_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalculationBloc>(
          create: (context) => CalculationBloc(),
        ),
        BlocProvider<VectorSheetBloc>(
          create: (context) =>
              VectorSheetBloc()..add(InitializeSheet('alphabet')),
        ),
      ],
      child: Builder(
        builder: (context) {
          final sheetBloc =
              BlocProvider.of<VectorSheetBloc>(context, listen: true);
          return Scaffold(
            body: SafeArea(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: (sheetBloc.state is SheetLoading)
                    ? const Center(child: CircularProgressIndicator())
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(child: DisplayView()),
                          NumpadView(),
                        ],
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
