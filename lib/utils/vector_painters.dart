import 'package:flutter/material.dart';
import 'package:bloc_calculator/utils/vector_group.dart';

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

    //TODO make this use Drawable draw (find solution for Paint())
    canvas.drawPath(element.layers[0].path, outerPaint);
    canvas.drawPath(element.layers[1].path, innerPaint);
  }

  @override
  bool shouldRepaint(VectorPainter oldDelegate) =>
      oldDelegate.element.color != element.color;
}
