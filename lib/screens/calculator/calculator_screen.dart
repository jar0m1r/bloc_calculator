import 'package:bloc_calculator/blocs/calculation/calculation_bloc.dart';
import 'package:bloc_calculator/screens/calculator/display_view.dart';
import 'package:bloc_calculator/screens/calculator/numpad_view.dart';
import 'package:bloc_calculator/services/vector_library_service.dart';
import 'package:bloc_calculator/utils/vector_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CalculatorScreen extends StatelessWidget {
  final graphicalElements =
      useState<VectorGroup>(VectorLibraryService().fetchElements('graphics'));
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalculationBloc>(
      create: (context) => CalculationBloc(),
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
