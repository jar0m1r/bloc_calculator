import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimationView extends HookWidget {
  const AnimationView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    )..forward();
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Align(
            child: CustomPaint(
                size: constraints.biggest,
                painter: IntroAnimationDelegate(animationController)),
          )
        ],
      ),
    );
  }
}

class IntroAnimationDelegate extends CustomPainter {
  IntroAnimationDelegate(AnimationController animation)
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      fontFamily: 'Galindo',
      color: Colors.pinkAccent,
      fontSize: 64,
    );
    const textSpan = TextSpan(
      text: 'één twee drie',
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width * .80,
    );
    final offset = Offset(size.width * .10, size.height / 2);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class CalculationAnimationDelegate extends CustomPainter {
  CalculationAnimationDelegate(AnimationController animation)
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    //firstOperand
    final firstOperantPaint = Paint()
      ..color = Colors.pink[100]
      ..style = PaintingStyle.fill;

    canvas.drawRect(
        Rect.fromCenter(
          center: Offset(
              size.width / 4, size.height / 2), //! there is a better way right?
          height: size.height * .70,
          width: size.width * .30,
        ),
        firstOperantPaint);

    //secondOperand
    final secondOperantPaint = Paint()
      ..color = Colors.pink[100]
      ..style = PaintingStyle.fill;

    canvas.drawRect(
        Rect.fromCenter(
          center: Offset((size.width / 4) * 3,
              size.height / 2), //! there is a better way right?
          height: size.height * .70,
          width: size.width * .30,
        ),
        secondOperantPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
