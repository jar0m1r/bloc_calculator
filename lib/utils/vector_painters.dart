import 'package:flutter/material.dart';
import 'package:bloc_calculator/utils/vector_element.dart';

class VectorPainter extends CustomPainter {
  final VectorElement element;

  VectorPainter(this.element);

  @override
  void paint(Canvas canvas, Size size) {
    final innerPaint = Paint()
      ..color = element.color ?? Colors.red //fixme default
      ..style = PaintingStyle.fill;

    final outerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawPath(element.paths[1], outerPaint);
    canvas.drawPath(element.paths[0], innerPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
