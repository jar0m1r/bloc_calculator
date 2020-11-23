import 'package:bloc_calculator/screens/calculator/animation_view.dart';
import 'package:bloc_calculator/screens/calculator/calculation_view.dart';
import 'package:flutter/material.dart';

class DisplayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.pink[50],
      child: Column(
        children: [
          const Expanded(
            child: AnimationView(),
          ),
          CalculationView(),
        ],
      ),
    );
  }
}
