import 'package:auto_route/auto_route.dart';
import 'package:bloc_calculator/routes/router.gr.dart';
import 'package:bloc_calculator/utils/vector_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bloc_calculator/utils/path_extensions.dart';

class SplashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final animation = useAnimationController(
      duration: const Duration(milliseconds: 500),
    )..forward();
    animation.addStatusListener((status) async {
      // if (status == AnimationStatus.completed) {
      //   await Future.delayed(
      //       const Duration(milliseconds: 200),
      //       () => ExtendedNavigator.of(context).push(Routes.calculatorScreen));
      // }
    });
    //! need to inject singleton here later !!!!
    final vectorElements = VectorElements();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              //FIXME only works here, need smarter fix
              final scaleFactor =
                  constraints.biggest.width / vectorElements.size.width;
              final customPaintSize = Size(constraints.biggest.width,
                  scaleFactor * constraints.biggest.height);
              return SizedBox.expand(
                child: Center(
                  child: CustomPaint(
                    size: customPaintSize,
                    painter: LogoPainter(
                        vectorElements.splashScreen, scaleFactor, animation),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  final List<VectorElement> elements;
  final double scaleFactor;

  LogoPainter(this.elements, this.scaleFactor, AnimationController animation)
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final innerPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final outerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    for (final element in elements) {
      canvas.drawPath(
          element.paths[1].shift(element.position).scale(scaleFactor),
          outerPaint);
      canvas.drawPath(
          element.paths[0].shift(element.position).scale(scaleFactor),
          innerPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
