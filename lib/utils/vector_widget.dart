import 'package:bloc_calculator/utils/vector_group.dart';
import 'package:bloc_calculator/utils/vector_painters.dart';
import 'package:flutter/material.dart';

class VectorWidget extends StatelessWidget {
  final VectorElement element;
  final Size size;

  const VectorWidget({Key key, this.element, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: VectorPainter(element),
    );
  }
}

class VectorHero extends StatelessWidget {
  final VectorElement element;

  const VectorHero({Key key, this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VectorWidget(element: element);
  }
}
