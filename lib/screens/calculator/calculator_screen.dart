import 'package:bloc_calculator/blocs/calculator/calculator_bloc.dart';
import 'package:bloc_calculator/screens/calculator/display_view.dart';
import 'package:bloc_calculator/screens/calculator/numpad_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalculatorBloc>(
      create: (context) => CalculatorBloc(),
      child: Scaffold(
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
    );
  }
}
