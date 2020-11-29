import 'package:bloc_calculator/blocs/calculation/calculation_bloc.dart';
import 'package:bloc_calculator/blocs/vector_manager/vector_manager_bloc.dart';
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
        BlocProvider<VectorManagerBloc>(
          create: (context) => VectorManagerBloc(),
        ),
      ],
      child: Builder(
        builder: (context) => Scaffold(
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(child: DisplayView()),
                  NumpadView(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
