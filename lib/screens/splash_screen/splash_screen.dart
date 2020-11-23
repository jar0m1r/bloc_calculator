import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => CustomPaint(
            painter: LogoPainter(),
            size: constraints.biggest,
          ),
        ),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xff59e869);
    path = Path();
    path.lineTo(size.width * 0.51, size.height * 0.24);
    path.cubicTo(size.width * 0.51, size.height / 4, size.width * 0.51,
        size.height * 0.26, size.width * 0.51, size.height * 0.26);
    path.cubicTo(size.width * 0.51, size.height * 0.27, size.width * 0.51,
        size.height * 0.28, size.width / 2, size.height * 0.29);
    path.cubicTo(size.width / 2, size.height * 0.29, size.width / 2,
        size.height * 0.3, size.width * 0.49, size.height * 0.3);
    path.cubicTo(size.width * 0.49, size.height * 0.31, size.width * 0.48,
        size.height * 0.32, size.width * 0.47, size.height * 0.32);
    path.cubicTo(size.width * 0.47, size.height * 0.32, size.width * 0.46,
        size.height / 3, size.width * 0.45, size.height / 3);
    path.cubicTo(size.width * 0.43, size.height / 3, size.width * 0.42,
        size.height * 0.34, size.width * 0.41, size.height * 0.34);
    path.cubicTo(size.width * 0.37, size.height * 0.34, size.width * 0.34,
        size.height / 3, size.width * 0.32, size.height * 0.32);
    path.cubicTo(size.width * 0.31, size.height * 0.31, size.width * 0.3,
        size.height * 0.29, size.width * 0.3, size.height * 0.26);
    path.cubicTo(size.width * 0.3, size.height * 0.26, size.width * 0.3,
        size.height * 0.26, size.width * 0.3, size.height * 0.26);
    path.cubicTo(size.width * 0.3, size.height / 4, size.width * 0.3,
        size.height / 4, size.width * 0.3, size.height / 4);
    path.cubicTo(size.width * 0.3, size.height * 0.24, size.width * 0.3,
        size.height * 0.24, size.width * 0.3, size.height * 0.23);
    path.cubicTo(size.width * 0.3, size.height * 0.23, size.width * 0.3,
        size.height * 0.22, size.width * 0.3, size.height * 0.22);
    path.cubicTo(size.width * 0.3, size.height / 5, size.width * 0.3,
        size.height / 5, size.width * 0.3, size.height / 5);
    path.cubicTo(size.width * 0.3, size.height / 5, size.width * 0.37,
        size.height / 5, size.width * 0.37, size.height / 5);
    path.cubicTo(size.width * 0.37, size.height / 5, size.width * 0.37,
        size.height * 0.22, size.width * 0.37, size.height * 0.23);
    path.cubicTo(size.width * 0.37, size.height * 0.24, size.width * 0.36,
        size.height / 4, size.width * 0.36, size.height * 0.26);
    path.cubicTo(size.width * 0.36, size.height * 0.27, size.width * 0.37,
        size.height * 0.28, size.width * 0.37, size.height * 0.29);
    path.cubicTo(size.width * 0.37, size.height * 0.3, size.width * 0.37,
        size.height * 0.31, size.width * 0.37, size.height * 0.32);
    path.cubicTo(size.width * 0.38, size.height * 0.32, size.width * 0.38,
        size.height * 0.32, size.width * 0.39, size.height * 0.32);
    path.cubicTo(size.width * 0.39, size.height * 0.32, size.width * 0.4,
        size.height * 0.32, size.width * 0.4, size.height * 0.32);
    path.cubicTo(size.width * 0.41, size.height * 0.32, size.width * 0.41,
        size.height * 0.32, size.width * 0.41, size.height * 0.32);
    path.cubicTo(size.width * 0.42, size.height * 0.31, size.width * 0.42,
        size.height * 0.3, size.width * 0.42, size.height * 0.29);
    path.cubicTo(size.width * 0.42, size.height * 0.28, size.width * 0.42,
        size.height * 0.27, size.width * 0.42, size.height * 0.26);
    path.cubicTo(size.width * 0.42, size.height / 4, size.width * 0.42,
        size.height * 0.24, size.width * 0.42, size.height * 0.23);
    path.cubicTo(size.width * 0.42, size.height * 0.22, size.width * 0.42,
        size.height / 5, size.width * 0.41, size.height / 5);
    path.cubicTo(size.width * 0.41, size.height / 5, size.width * 0.49,
        size.height / 5, size.width * 0.49, size.height / 5);
    path.cubicTo(size.width * 0.49, size.height / 5, size.width * 0.49,
        size.height * 0.22, size.width * 0.49, size.height * 0.23);
    path.cubicTo(size.width * 0.49, size.height * 0.24, size.width * 0.49,
        size.height / 4, size.width * 0.49, size.height * 0.26);
    path.cubicTo(size.width * 0.49, size.height * 0.26, size.width * 0.51,
        size.height * 0.24, size.width * 0.51, size.height * 0.24);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.42, size.height * 0.3);
    path.cubicTo(size.width * 0.42, size.height * 0.29, size.width * 0.43,
        size.height * 0.28, size.width * 0.43, size.height * 0.27);
    path.cubicTo(size.width * 0.43, size.height * 0.27, size.width * 0.43,
        size.height * 0.26, size.width * 0.43, size.height / 4);
    path.cubicTo(size.width * 0.43, size.height * 0.24, size.width * 0.43,
        size.height * 0.23, size.width * 0.43, size.height * 0.22);
    path.cubicTo(size.width * 0.43, size.height / 5, size.width * 0.42,
        size.height / 5, size.width * 0.42, size.height * 0.19);
    path.cubicTo(size.width * 0.42, size.height * 0.19, size.width * 0.42,
        size.height * 0.18, size.width * 0.42, size.height * 0.18);
    path.cubicTo(size.width * 0.42, size.height * 0.18, size.width * 0.51,
        size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.51,
        size.height * 0.19, size.width * 0.51, size.height * 0.19);
    path.cubicTo(size.width * 0.51, size.height / 5, size.width * 0.52,
        size.height / 5, size.width * 0.52, size.height * 0.22);
    path.cubicTo(size.width * 0.52, size.height * 0.23, size.width * 0.52,
        size.height * 0.23, size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height / 4, size.width * 0.52,
        size.height * 0.26, size.width * 0.52, size.height * 0.27);
    path.cubicTo(size.width * 0.52, size.height * 0.27, size.width * 0.51,
        size.height * 0.28, size.width * 0.51, size.height * 0.29);
    path.cubicTo(size.width * 0.51, size.height * 0.29, size.width / 2,
        size.height * 0.3, size.width / 2, size.height * 0.31);
    path.cubicTo(size.width * 0.49, size.height * 0.31, size.width * 0.49,
        size.height * 0.32, size.width * 0.48, size.height * 0.32);
    path.cubicTo(size.width * 0.47, size.height / 3, size.width * 0.46,
        size.height / 3, size.width * 0.45, size.height * 0.34);
    path.cubicTo(size.width * 0.44, size.height * 0.34, size.width * 0.42,
        size.height * 0.34, size.width * 0.41, size.height * 0.34);
    path.cubicTo(size.width * 0.41, size.height * 0.34, size.width * 0.41,
        size.height * 0.34, size.width * 0.41, size.height * 0.34);
    path.cubicTo(size.width * 0.37, size.height * 0.34, size.width * 0.34,
        size.height / 3, size.width * 0.32, size.height * 0.32);
    path.cubicTo(size.width * 0.3, size.height * 0.31, size.width * 0.29,
        size.height * 0.29, size.width * 0.29, size.height * 0.26);
    path.cubicTo(size.width * 0.29, size.height * 0.26, size.width * 0.29,
        size.height * 0.26, size.width * 0.29, size.height * 0.26);
    path.cubicTo(size.width * 0.29, size.height / 4, size.width * 0.29,
        size.height / 4, size.width * 0.29, size.height / 4);
    path.cubicTo(size.width * 0.29, size.height * 0.24, size.width * 0.29,
        size.height * 0.24, size.width * 0.29, size.height * 0.23);
    path.cubicTo(size.width * 0.61, size.height * 0.02, size.width * 1.15,
        size.height * 0.12, size.width * 1.27, size.height * 0.41);
    path.cubicTo(size.width * 1.32, size.height * 0.55, size.width * 1.27,
        size.height * 0.69, size.width * 1.12, size.height * 0.79);
    path.cubicTo(size.width * 1.12, size.height * 0.78, size.width * 1.12,
        size.height * 0.78, size.width * 1.12, size.height * 0.78);
    path.cubicTo(size.width * 1.12, size.height * 0.78, size.width * 1.12,
        size.height * 0.77, size.width * 1.12, size.height * 0.77);
    path.cubicTo(size.width * 1.12, size.height * 0.77, size.width * 1.21,
        size.height * 0.77, size.width * 1.21, size.height * 0.77);
    path.cubicTo(size.width * 1.21, size.height * 0.77, size.width * 1.21,
        size.height * 0.78, size.width * 1.21, size.height * 0.78);
    path.cubicTo(size.width * 1.2, size.height * 0.79, size.width * 1.2,
        size.height * 0.8, size.width * 1.2, size.height * 0.81);
    path.cubicTo(size.width * 1.2, size.height * 0.81, size.width * 1.2,
        size.height * 0.82, size.width * 1.2, size.height * 0.84);
    path.cubicTo(size.width * 1.2, size.height * 0.84, size.width * 1.2,
        size.height * 0.85, size.width * 1.2, size.height * 0.86);
    path.cubicTo(size.width * 1.2, size.height * 0.87, size.width * 1.2,
        size.height * 0.88, size.width * 1.21, size.height * 0.89);
    path.cubicTo(size.width * 1.21, size.height * 0.89, size.width * 1.21,
        size.height * 0.89, size.width * 1.21, size.height * 0.89);
    path.cubicTo(size.width * 1.22, size.height * 0.89, size.width * 1.22,
        size.height * 0.89, size.width * 1.23, size.height * 0.89);
    path.cubicTo(size.width * 1.23, size.height * 0.89, size.width * 1.24,
        size.height * 0.89, size.width * 1.24, size.height * 0.89);
    path.cubicTo(size.width * 1.24, size.height * 0.89, size.width * 1.25,
        size.height * 0.89, size.width * 1.25, size.height * 0.89);
    path.cubicTo(size.width * 1.25, size.height * 0.89, size.width * 0.42,
        size.height * 0.3, size.width * 0.42, size.height * 0.3);
    path.lineTo(size.width * 0.51, size.height * 0.24);
    path.cubicTo(size.width * 0.51, size.height / 4, size.width * 0.51,
        size.height * 0.26, size.width * 0.51, size.height * 0.26);
    path.cubicTo(size.width * 0.51, size.height * 0.27, size.width * 0.51,
        size.height * 0.28, size.width / 2, size.height * 0.29);
    path.cubicTo(size.width / 2, size.height * 0.29, size.width / 2,
        size.height * 0.3, size.width * 0.49, size.height * 0.3);
    path.cubicTo(size.width * 0.49, size.height * 0.31, size.width * 0.48,
        size.height * 0.32, size.width * 0.47, size.height * 0.32);
    path.cubicTo(size.width * 0.47, size.height * 0.32, size.width * 0.46,
        size.height / 3, size.width * 0.45, size.height / 3);
    path.cubicTo(size.width * 0.43, size.height / 3, size.width * 0.42,
        size.height * 0.34, size.width * 0.41, size.height * 0.34);
    path.cubicTo(size.width * 0.37, size.height * 0.34, size.width * 0.34,
        size.height / 3, size.width * 0.32, size.height * 0.32);
    path.cubicTo(size.width * 0.31, size.height * 0.31, size.width * 0.3,
        size.height * 0.29, size.width * 0.3, size.height * 0.26);
    path.cubicTo(size.width * 0.3, size.height * 0.26, size.width * 0.3,
        size.height * 0.26, size.width * 0.3, size.height * 0.26);
    path.cubicTo(size.width * 0.3, size.height / 4, size.width * 0.3,
        size.height / 4, size.width * 0.3, size.height / 4);
    path.cubicTo(size.width * 0.3, size.height * 0.24, size.width * 0.3,
        size.height * 0.24, size.width * 0.3, size.height * 0.23);
    path.cubicTo(size.width * 0.3, size.height * 0.23, size.width * 0.3,
        size.height * 0.22, size.width * 0.3, size.height * 0.22);
    path.cubicTo(size.width * 0.3, size.height / 5, size.width * 0.3,
        size.height / 5, size.width * 0.3, size.height / 5);
    path.cubicTo(size.width * 0.3, size.height / 5, size.width * 0.37,
        size.height / 5, size.width * 0.37, size.height / 5);
    path.cubicTo(size.width * 0.37, size.height / 5, size.width * 0.37,
        size.height * 0.22, size.width * 0.37, size.height * 0.23);
    path.cubicTo(size.width * 0.37, size.height * 0.24, size.width * 0.36,
        size.height / 4, size.width * 0.36, size.height * 0.26);
    path.cubicTo(size.width * 0.36, size.height * 0.27, size.width * 0.37,
        size.height * 0.28, size.width * 0.37, size.height * 0.29);
    path.cubicTo(size.width * 0.37, size.height * 0.3, size.width * 0.37,
        size.height * 0.31, size.width * 0.37, size.height * 0.32);
    path.cubicTo(size.width * 0.38, size.height * 0.32, size.width * 0.38,
        size.height * 0.32, size.width * 0.39, size.height * 0.32);
    path.cubicTo(size.width * 0.39, size.height * 0.32, size.width * 0.4,
        size.height * 0.32, size.width * 0.4, size.height * 0.32);
    path.cubicTo(size.width * 0.41, size.height * 0.32, size.width * 0.41,
        size.height * 0.32, size.width * 0.41, size.height * 0.32);
    path.cubicTo(size.width * 0.42, size.height * 0.31, size.width * 0.42,
        size.height * 0.3, size.width * 0.42, size.height * 0.29);
    path.cubicTo(size.width * 0.42, size.height * 0.28, size.width * 0.42,
        size.height * 0.27, size.width * 0.42, size.height * 0.26);
    path.cubicTo(size.width * 0.42, size.height / 4, size.width * 0.42,
        size.height * 0.24, size.width * 0.42, size.height * 0.23);
    path.cubicTo(size.width * 0.42, size.height * 0.22, size.width * 0.42,
        size.height / 5, size.width * 0.41, size.height / 5);
    path.cubicTo(size.width * 0.41, size.height / 5, size.width * 0.49,
        size.height / 5, size.width * 0.49, size.height / 5);
    path.cubicTo(size.width * 0.49, size.height / 5, size.width * 0.49,
        size.height * 0.22, size.width * 0.49, size.height * 0.23);
    path.cubicTo(size.width * 0.49, size.height * 0.24, size.width * 0.49,
        size.height / 4, size.width * 0.49, size.height * 0.26);
    path.cubicTo(size.width * 0.49, size.height * 0.26, size.width * 0.51,
        size.height * 0.24, size.width * 0.51, size.height * 0.24);
    canvas.drawPath(path, paint);

    // Path number 3

    paint.color = const Color(0xff59e869);
    path = Path();
    path.lineTo(size.width * 0.62, size.height * 0.12);
    path.cubicTo(size.width * 0.61, size.height * 0.16, size.width * 0.61,
        size.height * 0.19, size.width * 0.61, size.height * 0.23);
    path.cubicTo(size.width * 0.61, size.height * 0.26, size.width * 0.61,
        size.height * 0.29, size.width * 0.61, size.height / 3);
    path.cubicTo(size.width * 0.61, size.height / 3, size.width * 0.55,
        size.height / 3, size.width * 0.55, size.height / 3);
    path.cubicTo(size.width * 0.55, size.height * 0.31, size.width * 0.55,
        size.height * 0.29, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.26, size.width * 0.55,
        size.height * 0.24, size.width * 0.55, size.height * 0.23);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.55,
        size.height * 0.19, size.width * 0.55, size.height * 0.18);
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.55,
        size.height * 0.14, size.width * 0.55, size.height * 0.12);
    path.cubicTo(size.width * 0.55, size.height * 0.12, size.width * 0.62,
        size.height * 0.12, size.width * 0.62, size.height * 0.12);
    path.cubicTo(size.width * 0.62, size.height * 0.12, size.width * 0.62,
        size.height * 0.12, size.width * 0.62, size.height * 0.12);
    canvas.drawPath(path, paint);

    // Path number 4

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.63, size.height * 0.12);
    path.cubicTo(size.width * 0.63, size.height * 0.12, size.width * 0.54,
        size.height * 0.12, size.width * 0.54, size.height * 0.12);
    path.cubicTo(size.width * 0.54, size.height * 0.12, size.width * 0.54,
        size.height * 0.12, size.width * 0.54, size.height * 0.12);
    path.cubicTo(size.width * 0.54, size.height * 0.14, size.width * 0.54,
        size.height * 0.16, size.width * 0.54, size.height * 0.18);
    path.cubicTo(size.width * 0.54, size.height * 0.19, size.width * 0.54,
        size.height / 5, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.24, size.width * 0.54,
        size.height * 0.26, size.width * 0.54, size.height * 0.28);
    path.cubicTo(size.width * 0.54, size.height * 0.29, size.width * 0.54,
        size.height * 0.31, size.width * 0.54, size.height / 3);
    path.cubicTo(size.width * 0.54, size.height / 3, size.width * 0.54,
        size.height / 3, size.width * 0.54, size.height / 3);
    path.cubicTo(size.width * 0.54, size.height / 3, size.width * 0.62,
        size.height / 3, size.width * 0.62, size.height / 3);
    path.cubicTo(size.width * 0.62, size.height / 3, size.width * 0.62,
        size.height / 3, size.width * 0.62, size.height / 3);
    path.cubicTo(size.width * 0.62, size.height * 0.29, size.width * 0.62,
        size.height * 0.26, size.width * 0.62, size.height * 0.23);
    path.cubicTo(size.width * 0.62, size.height * 0.19, size.width * 0.62,
        size.height * 0.16, size.width * 0.62, size.height * 0.12);
    path.cubicTo(size.width * 0.62, size.height * 0.12, size.width * 0.63,
        size.height * 0.12, size.width * 0.63, size.height * 0.12);
    path.cubicTo(size.width * 0.63, size.height * 0.12, size.width * 0.63,
        size.height * 0.12, size.width * 0.63, size.height * 0.12);
    path.lineTo(size.width * 0.62, size.height * 0.12);
    path.cubicTo(size.width * 0.61, size.height * 0.16, size.width * 0.61,
        size.height * 0.19, size.width * 0.61, size.height * 0.23);
    path.cubicTo(size.width * 0.61, size.height * 0.26, size.width * 0.61,
        size.height * 0.29, size.width * 0.61, size.height / 3);
    path.cubicTo(size.width * 0.61, size.height / 3, size.width * 0.55,
        size.height / 3, size.width * 0.55, size.height / 3);
    path.cubicTo(size.width * 0.55, size.height * 0.31, size.width * 0.55,
        size.height * 0.29, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.26, size.width * 0.55,
        size.height * 0.24, size.width * 0.55, size.height * 0.23);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.55,
        size.height * 0.19, size.width * 0.55, size.height * 0.18);
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.55,
        size.height * 0.14, size.width * 0.55, size.height * 0.12);
    path.cubicTo(size.width * 0.55, size.height * 0.12, size.width * 0.62,
        size.height * 0.12, size.width * 0.62, size.height * 0.12);
    path.cubicTo(size.width * 0.62, size.height * 0.12, size.width * 0.62,
        size.height * 0.12, size.width * 0.62, size.height * 0.12);
    canvas.drawPath(path, paint);

    // Path number 5

    paint.color = const Color(0xff59e869);
    path = Path();
    path.lineTo(size.width * 0.98, size.height * 0.26);
    path.cubicTo(size.width * 0.98, size.height * 0.26, size.width * 0.83,
        size.height * 0.27, size.width * 0.83, size.height * 0.27);
    path.cubicTo(size.width * 0.83, size.height * 0.28, size.width * 0.83,
        size.height * 0.28, size.width * 0.83, size.height * 0.29);
    path.cubicTo(size.width * 0.84, size.height * 0.29, size.width * 0.85,
        size.height * 0.29, size.width * 0.86, size.height * 0.29);
    path.cubicTo(size.width * 0.87, size.height * 0.29, size.width * 0.88,
        size.height * 0.29, size.width * 0.88, size.height * 0.29);
    path.cubicTo(size.width * 0.89, size.height * 0.29, size.width * 0.89,
        size.height * 0.29, size.width * 0.9, size.height * 0.29);
    path.cubicTo(size.width * 0.9, size.height * 0.29, size.width * 0.9,
        size.height * 0.29, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.9, size.height * 0.28, size.width * 0.9,
        size.height * 0.28, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.9, size.height * 0.28, size.width * 0.9,
        size.height * 0.28, size.width * 0.9, size.height * 0.27);
    path.cubicTo(size.width * 0.9, size.height * 0.27, size.width * 0.9,
        size.height * 0.27, size.width * 0.9, size.height * 0.27);
    path.cubicTo(size.width * 0.9, size.height * 0.27, size.width * 0.98,
        size.height * 0.27, size.width * 0.98, size.height * 0.27);
    path.cubicTo(size.width * 0.97, size.height * 0.28, size.width * 0.97,
        size.height * 0.29, size.width * 0.96, size.height * 0.29);
    path.cubicTo(size.width * 0.95, size.height * 0.3, size.width * 0.94,
        size.height * 0.3, size.width * 0.93, size.height * 0.31);
    path.cubicTo(size.width * 0.92, size.height * 0.31, size.width * 0.91,
        size.height * 0.31, size.width * 0.9, size.height * 0.32);
    path.cubicTo(size.width * 0.89, size.height * 0.32, size.width * 0.88,
        size.height * 0.32, size.width * 0.86, size.height * 0.32);
    path.cubicTo(size.width * 0.85, size.height * 0.32, size.width * 0.83,
        size.height * 0.32, size.width * 0.82, size.height * 0.31);
    path.cubicTo(size.width * 0.81, size.height * 0.31, size.width * 0.79,
        size.height * 0.31, size.width * 0.78, size.height * 0.3);
    path.cubicTo(size.width * 0.77, size.height * 0.29, size.width * 0.76,
        size.height * 0.29, size.width * 0.76, size.height * 0.28);
    path.cubicTo(size.width * 0.75, size.height * 0.26, size.width * 0.75,
        size.height / 4, size.width * 0.75, size.height * 0.24);
    path.cubicTo(size.width * 0.75, size.height * 0.22, size.width * 0.75,
        size.height / 5, size.width * 0.76, size.height / 5);
    path.cubicTo(size.width * 0.77, size.height / 5, size.width * 0.77,
        size.height * 0.19, size.width * 0.78, size.height * 0.18);
    path.cubicTo(size.width * 0.79, size.height * 0.18, size.width * 0.81,
        size.height * 0.17, size.width * 0.82, size.height * 0.17);
    path.cubicTo(size.width * 0.83, size.height * 0.17, size.width * 0.85,
        size.height * 0.17, size.width * 0.86, size.height * 0.17);
    path.cubicTo(size.width * 0.88, size.height * 0.17, size.width * 0.9,
        size.height * 0.17, size.width * 0.91, size.height * 0.17);
    path.cubicTo(size.width * 0.92, size.height * 0.17, size.width * 0.94,
        size.height * 0.18, size.width * 0.95, size.height * 0.19);
    path.cubicTo(size.width * 0.96, size.height * 0.19, size.width * 0.96,
        size.height / 5, size.width * 0.97, size.height / 5);
    path.cubicTo(size.width * 0.98, size.height * 0.22, size.width * 0.98,
        size.height * 0.23, size.width * 0.98, size.height * 0.24);
    path.cubicTo(size.width * 0.98, size.height * 0.24, size.width * 0.98,
        size.height / 4, size.width * 0.98, size.height / 4);
    path.cubicTo(size.width * 0.98, size.height / 4, size.width * 0.98,
        size.height * 0.26, size.width * 0.98, size.height * 0.26);
    path.lineTo(size.width * 0.82, size.height * 0.24);
    path.cubicTo(size.width * 0.82, size.height * 0.24, size.width * 0.9,
        size.height * 0.24, size.width * 0.9, size.height * 0.24);
    path.cubicTo(size.width * 0.9, size.height * 0.23, size.width * 0.9,
        size.height * 0.22, size.width * 0.9, size.height / 5);
    path.cubicTo(size.width * 0.89, size.height / 5, size.width * 0.88,
        size.height / 5, size.width * 0.86, size.height / 5);
    path.cubicTo(size.width * 0.85, size.height / 5, size.width * 0.84,
        size.height / 5, size.width * 0.83, size.height / 5);
    path.cubicTo(size.width * 0.83, size.height * 0.22, size.width * 0.83,
        size.height * 0.22, size.width * 0.83, size.height * 0.23);
    path.cubicTo(size.width * 0.83, size.height * 0.23, size.width * 0.82,
        size.height * 0.24, size.width * 0.82, size.height * 0.24);
    canvas.drawPath(path, paint);

    // Path number 6

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.89, size.height * 0.3);
    path.cubicTo(size.width * 0.89, size.height * 0.3, size.width * 0.89,
        size.height * 0.3, size.width * 0.89, size.height * 0.3);
    path.cubicTo(size.width * 0.89, size.height * 0.29, size.width * 0.89,
        size.height * 0.29, size.width * 0.89, size.height * 0.29);
    path.cubicTo(size.width * 0.89, size.height * 0.29, size.width * 0.89,
        size.height * 0.29, size.width * 0.89, size.height * 0.29);
    path.cubicTo(size.width * 0.89, size.height * 0.29, size.width * 0.89,
        size.height * 0.28, size.width * 0.89, size.height * 0.28);
    path.cubicTo(size.width * 0.89, size.height * 0.28, size.width,
        size.height * 0.28, size.width, size.height * 0.28);
    path.cubicTo(size.width, size.height * 0.28, size.width, size.height * 0.29,
        size.width, size.height * 0.29);
    path.cubicTo(size.width * 0.98, size.height * 0.3, size.width * 0.98,
        size.height * 0.31, size.width * 0.97, size.height * 0.31);
    path.cubicTo(size.width * 0.96, size.height * 0.32, size.width * 0.95,
        size.height * 0.32, size.width * 0.94, size.height / 3);
    path.cubicTo(size.width * 0.93, size.height / 3, size.width * 0.92,
        size.height * 0.34, size.width * 0.91, size.height * 0.34);
    path.cubicTo(size.width * 0.89, size.height * 0.34, size.width * 0.88,
        size.height * 0.34, size.width * 0.87, size.height * 0.34);
    path.cubicTo(size.width * 0.85, size.height * 0.34, size.width * 0.83,
        size.height * 0.34, size.width * 0.82, size.height * 0.34);
    path.cubicTo(size.width * 0.81, size.height / 3, size.width * 0.79,
        size.height / 3, size.width * 0.78, size.height * 0.32);
    path.cubicTo(size.width * 0.77, size.height * 0.31, size.width * 0.76,
        size.height * 0.3, size.width * 0.75, size.height * 0.29);
    path.cubicTo(size.width * 0.75, size.height * 0.28, size.width * 0.74,
        size.height * 0.27, size.width * 0.74, size.height / 4);
    path.cubicTo(size.width * 0.74, size.height * 0.24, size.width * 0.75,
        size.height * 0.23, size.width * 0.75, size.height * 0.22);
    path.cubicTo(size.width * 0.76, size.height / 5, size.width * 0.77,
        size.height / 5, size.width * 0.78, size.height / 5);
    path.cubicTo(size.width * 0.79, size.height * 0.19, size.width * 0.81,
        size.height * 0.19, size.width * 0.82, size.height * 0.18);
    path.cubicTo(size.width * 0.84, size.height * 0.18, size.width * 0.85,
        size.height * 0.18, size.width * 0.87, size.height * 0.18);
    path.cubicTo(size.width * 0.88, size.height * 0.18, size.width * 0.9,
        size.height * 0.18, size.width * 0.91, size.height * 0.18);
    path.cubicTo(size.width * 0.93, size.height * 0.19, size.width * 0.94,
        size.height * 0.19, size.width * 0.95, size.height / 5);
    path.cubicTo(size.width * 0.97, size.height / 5, size.width * 0.97,
        size.height / 5, size.width * 0.98, size.height * 0.22);
    path.cubicTo(size.width, size.height * 0.23, size.width, size.height / 4,
        size.width, size.height * 0.26);
    path.cubicTo(size.width, size.height * 0.26, size.width, size.height * 0.27,
        size.width, size.height * 0.27);
    path.cubicTo(size.width, size.height * 0.27, size.width * 0.83,
        size.height * 0.28, size.width * 0.83, size.height * 0.28);
    path.cubicTo(size.width * 0.84, size.height * 0.28, size.width * 0.84,
        size.height * 0.29, size.width * 0.84, size.height * 0.29);
    path.cubicTo(size.width * 0.85, size.height * 0.29, size.width * 0.86,
        size.height * 0.29, size.width * 0.87, size.height * 0.29);
    path.cubicTo(size.width * 0.87, size.height * 0.29, size.width * 0.88,
        size.height * 0.29, size.width * 0.88, size.height * 0.29);
    path.cubicTo(size.width * 0.89, size.height * 0.29, size.width * 0.89,
        size.height * 0.29, size.width * 0.89, size.height * 0.29);
    path.cubicTo(size.width * 0.89, size.height * 0.29, size.width * 0.89,
        size.height * 0.3, size.width * 0.89, size.height * 0.3);
    path.lineTo(size.width * 0.98, size.height * 0.26);
    path.cubicTo(size.width * 0.98, size.height * 0.26, size.width * 0.83,
        size.height * 0.27, size.width * 0.83, size.height * 0.27);
    path.cubicTo(size.width * 0.83, size.height * 0.28, size.width * 0.83,
        size.height * 0.28, size.width * 0.83, size.height * 0.29);
    path.cubicTo(size.width * 0.84, size.height * 0.29, size.width * 0.85,
        size.height * 0.29, size.width * 0.86, size.height * 0.29);
    path.cubicTo(size.width * 0.87, size.height * 0.29, size.width * 0.88,
        size.height * 0.29, size.width * 0.88, size.height * 0.29);
    path.cubicTo(size.width * 0.89, size.height * 0.29, size.width * 0.89,
        size.height * 0.29, size.width * 0.9, size.height * 0.29);
    path.cubicTo(size.width * 0.9, size.height * 0.29, size.width * 0.9,
        size.height * 0.29, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.9, size.height * 0.28, size.width * 0.9,
        size.height * 0.28, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.9, size.height * 0.28, size.width * 0.9,
        size.height * 0.28, size.width * 0.9, size.height * 0.27);
    path.cubicTo(size.width * 0.9, size.height * 0.27, size.width * 0.9,
        size.height * 0.27, size.width * 0.9, size.height * 0.27);
    path.cubicTo(size.width * 0.9, size.height * 0.27, size.width * 0.98,
        size.height * 0.27, size.width * 0.98, size.height * 0.27);
    path.cubicTo(size.width * 0.97, size.height * 0.28, size.width * 0.97,
        size.height * 0.29, size.width * 0.96, size.height * 0.29);
    path.cubicTo(size.width * 0.95, size.height * 0.3, size.width * 0.94,
        size.height * 0.3, size.width * 0.93, size.height * 0.31);
    path.cubicTo(size.width * 0.92, size.height * 0.31, size.width * 0.91,
        size.height * 0.31, size.width * 0.9, size.height * 0.32);
    path.cubicTo(size.width * 0.89, size.height * 0.32, size.width * 0.88,
        size.height * 0.32, size.width * 0.86, size.height * 0.32);
    path.cubicTo(size.width * 0.85, size.height * 0.32, size.width * 0.83,
        size.height * 0.32, size.width * 0.82, size.height * 0.31);
    path.cubicTo(size.width * 0.81, size.height * 0.31, size.width * 0.79,
        size.height * 0.31, size.width * 0.78, size.height * 0.3);
    path.cubicTo(size.width * 0.77, size.height * 0.29, size.width * 0.76,
        size.height * 0.29, size.width * 0.76, size.height * 0.28);
    path.cubicTo(size.width * 0.75, size.height * 0.26, size.width * 0.75,
        size.height / 4, size.width * 0.75, size.height * 0.24);
    path.cubicTo(size.width * 0.75, size.height * 0.22, size.width * 0.75,
        size.height / 5, size.width * 0.76, size.height / 5);
    path.cubicTo(size.width * 0.77, size.height / 5, size.width * 0.77,
        size.height * 0.19, size.width * 0.78, size.height * 0.18);
    path.cubicTo(size.width * 0.79, size.height * 0.18, size.width * 0.81,
        size.height * 0.17, size.width * 0.82, size.height * 0.17);
    path.cubicTo(size.width * 0.83, size.height * 0.17, size.width * 0.85,
        size.height * 0.17, size.width * 0.86, size.height * 0.17);
    path.cubicTo(size.width * 0.88, size.height * 0.17, size.width * 0.9,
        size.height * 0.17, size.width * 0.91, size.height * 0.17);
    path.cubicTo(size.width * 0.92, size.height * 0.17, size.width * 0.94,
        size.height * 0.18, size.width * 0.95, size.height * 0.19);
    path.cubicTo(size.width * 0.96, size.height * 0.19, size.width * 0.96,
        size.height / 5, size.width * 0.97, size.height / 5);
    path.cubicTo(size.width * 0.98, size.height * 0.22, size.width * 0.98,
        size.height * 0.23, size.width * 0.98, size.height * 0.24);
    path.cubicTo(size.width * 0.98, size.height * 0.24, size.width * 0.98,
        size.height / 4, size.width * 0.98, size.height / 4);
    path.cubicTo(size.width * 0.98, size.height / 4, size.width * 0.98,
        size.height * 0.26, size.width * 0.98, size.height * 0.26);
    path.lineTo(size.width * 0.82, size.height * 0.24);
    path.cubicTo(size.width * 0.82, size.height * 0.24, size.width * 0.9,
        size.height * 0.24, size.width * 0.9, size.height * 0.24);
    path.cubicTo(size.width * 0.9, size.height * 0.23, size.width * 0.9,
        size.height * 0.22, size.width * 0.9, size.height / 5);
    path.cubicTo(size.width * 0.89, size.height / 5, size.width * 0.88,
        size.height / 5, size.width * 0.86, size.height / 5);
    path.cubicTo(size.width * 0.85, size.height / 5, size.width * 0.84,
        size.height / 5, size.width * 0.83, size.height / 5);
    path.cubicTo(size.width * 0.83, size.height * 0.22, size.width * 0.83,
        size.height * 0.22, size.width * 0.83, size.height * 0.23);
    path.cubicTo(size.width * 0.83, size.height * 0.23, size.width * 0.82,
        size.height * 0.24, size.width * 0.82, size.height * 0.24);
    path.lineTo(size.width * 0.89, size.height * 0.22);
    path.cubicTo(size.width * 0.88, size.height * 0.22, size.width * 0.87,
        size.height * 0.22, size.width * 0.86, size.height * 0.22);
    path.cubicTo(size.width * 0.85, size.height * 0.22, size.width * 0.84,
        size.height * 0.22, size.width * 0.83, size.height * 0.22);
    path.cubicTo(size.width * 0.83, size.height * 0.22, size.width * 0.83,
        size.height * 0.22, size.width * 0.83, size.height * 0.23);
    path.cubicTo(size.width * 0.83, size.height * 0.23, size.width * 0.9,
        size.height * 0.23, size.width * 0.9, size.height * 0.23);
    path.cubicTo(size.width * 0.9, size.height * 0.22, size.width * 0.9,
        size.height / 5, size.width * 0.89, size.height / 5);
    path.cubicTo(size.width * 0.89, size.height / 5, size.width * 0.89,
        size.height * 0.22, size.width * 0.89, size.height * 0.22);
    canvas.drawPath(path, paint);

    // Path number 7

    paint.color = const Color(0xffff39a0);
    path = Path();
    path.lineTo(size.width * 0.06, size.height * 0.31);
    path.cubicTo(size.width * 0.06, size.height * 0.29, size.width * 0.06,
        size.height * 0.27, size.width * 0.06, size.height * 0.26);
    path.cubicTo(size.width * 0.06, size.height / 4, size.width * 0.06,
        size.height * 0.24, size.width * 0.06, size.height * 0.23);
    path.cubicTo(size.width * 0.06, size.height * 0.23, size.width * 0.01,
        size.height * 0.23, size.width * 0.01, size.height * 0.23);
    path.cubicTo(size.width * 0.01, size.height * 0.23, size.width * 0.01,
        size.height * 0.11, size.width * 0.01, size.height * 0.11);
    path.cubicTo(size.width * 0.03, size.height * 0.11, size.width * 0.05,
        size.height * 0.11, size.width * 0.07, size.height * 0.11);
    path.cubicTo(size.width * 0.08, size.height * 0.11, size.width * 0.1,
        size.height * 0.11, size.width * 0.12, size.height * 0.11);
    path.cubicTo(size.width * 0.12, size.height * 0.12, size.width * 0.12,
        size.height * 0.13, size.width * 0.12, size.height * 0.14);
    path.cubicTo(size.width * 0.12, size.height * 0.17, size.width * 0.12,
        size.height * 0.19, size.width * 0.12, size.height / 5);
    path.cubicTo(size.width * 0.12, size.height / 5, size.width * 0.06,
        size.height / 5, size.width * 0.06, size.height / 5);
    path.cubicTo(size.width * 0.06, size.height / 5, size.width * 0.06,
        size.height * 0.31, size.width * 0.06, size.height * 0.31);
    canvas.drawPath(path, paint);

    // Path number 8

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.05, size.height * 0.15);
    path.cubicTo(size.width * 0.05, size.height * 0.15, size.width * 0.01,
        size.height * 0.15, size.width * 0.01, size.height * 0.15);
    path.cubicTo(size.width * 0.01, size.height * 0.15, size.width * 0.01,
        size.height * 0.11, size.width * 0.01, size.height * 0.11);
    path.cubicTo(size.width * 0.01, size.height * 0.11, size.width * 0.02,
        size.height * 0.11, size.width * 0.02, size.height * 0.11);
    path.cubicTo(size.width * 0.03, size.height * 0.11, size.width * 0.05,
        size.height * 0.11, size.width * 0.07, size.height * 0.11);
    path.cubicTo(size.width * 0.09, size.height * 0.11, size.width * 0.1,
        size.height * 0.11, size.width * 0.12, size.height * 0.1);
    path.cubicTo(size.width * 0.12, size.height * 0.1, size.width * 0.13,
        size.height * 0.1, size.width * 0.13, size.height * 0.1);
    path.cubicTo(size.width * 0.13, size.height * 0.1, size.width * 0.13,
        size.height * 0.11, size.width * 0.13, size.height * 0.11);
    path.cubicTo(size.width * 0.13, size.height * 0.12, size.width * 0.13,
        size.height * 0.13, size.width * 0.13, size.height * 0.14);
    path.cubicTo(size.width * 0.13, size.height * 0.17, size.width * 0.13,
        size.height * 0.19, size.width * 0.13, size.height / 5);
    path.cubicTo(size.width * 0.13, size.height / 5, size.width * 0.13,
        size.height * 0.22, size.width * 0.13, size.height * 0.22);
    path.cubicTo(size.width * 0.13, size.height * 0.22, size.width * 0.05,
        size.height * 0.22, size.width * 0.05, size.height * 0.22);
    path.cubicTo(size.width * 0.05, size.height * 0.22, size.width * 0.05,
        size.height / 5, size.width * 0.05, size.height / 5);
    path.cubicTo(size.width * 0.05, size.height * 0.19, size.width * 0.05,
        size.height * 0.17, size.width * 0.05, size.height * 0.15);
    path.cubicTo(size.width * 0.05, size.height * 0.14, size.width * 0.05,
        size.height * 0.12, size.width * 0.05, size.height * 0.1);
    path.cubicTo(size.width * 0.05, size.height * 0.09, size.width * 0.05,
        size.height * 0.08, size.width * 0.05, size.height * 0.07);
    path.cubicTo(size.width * 0.05, size.height * 0.07, size.width * 0.05,
        size.height * 0.15, size.width * 0.05, size.height * 0.15);
    path.lineTo(size.width * 0.06, size.height * 0.31);
    path.cubicTo(size.width * 0.06, size.height * 0.29, size.width * 0.06,
        size.height * 0.27, size.width * 0.06, size.height * 0.26);
    path.cubicTo(size.width * 0.06, size.height / 4, size.width * 0.06,
        size.height * 0.24, size.width * 0.06, size.height * 0.23);
    path.cubicTo(size.width * 0.06, size.height * 0.23, size.width * 0.01,
        size.height * 0.23, size.width * 0.01, size.height * 0.23);
    path.cubicTo(size.width * 0.01, size.height * 0.23, size.width * 0.01,
        size.height * 0.11, size.width * 0.01, size.height * 0.11);
    path.cubicTo(size.width * 0.03, size.height * 0.11, size.width * 0.05,
        size.height * 0.11, size.width * 0.07, size.height * 0.11);
    path.cubicTo(size.width * 0.08, size.height * 0.11, size.width * 0.1,
        size.height * 0.11, size.width * 0.12, size.height * 0.11);
    path.cubicTo(size.width * 0.12, size.height * 0.12, size.width * 0.12,
        size.height * 0.13, size.width * 0.12, size.height * 0.14);
    path.cubicTo(size.width * 0.12, size.height * 0.17, size.width * 0.12,
        size.height * 0.19, size.width * 0.12, size.height / 5);
    path.cubicTo(size.width * 0.12, size.height / 5, size.width * 0.06,
        size.height / 5, size.width * 0.06, size.height / 5);
    path.cubicTo(size.width * 0.06, size.height / 5, size.width * 0.06,
        size.height * 0.31, size.width * 0.06, size.height * 0.31);
    canvas.drawPath(path, paint);

    // Path number 9

    paint.color = const Color(0xffff39a0);
    path = Path();
    path.lineTo(size.width / 2, size.height * 0.16);
    path.cubicTo(size.width / 2, size.height * 0.16, size.width * 0.31,
        size.height * 0.16, size.width * 0.31, size.height * 0.16);
    path.cubicTo(size.width * 0.37, size.height * 0.16, size.width * 0.41,
        size.height / 5, size.width * 0.38, size.height / 4);
    path.cubicTo(size.width * 0.36, size.height * 0.27, size.width / 3,
        size.height * 0.28, size.width * 0.3, size.height * 0.28);
    path.cubicTo(size.width * 0.3, size.height * 0.27, size.width * 0.3,
        size.height * 0.27, size.width * 0.3, size.height * 0.27);
    path.cubicTo(size.width * 0.31, size.height * 0.26, size.width * 0.31,
        size.height * 0.26, size.width * 0.31, size.height * 0.26);
    path.cubicTo(size.width * 0.31, size.height / 4, size.width * 0.31,
        size.height / 4, size.width * 0.31, size.height / 4);
    path.cubicTo(size.width * 0.32, size.height / 4, size.width * 0.32,
        size.height * 0.24, size.width * 0.32, size.height * 0.24);
    path.cubicTo(size.width / 3, size.height * 0.23, size.width / 3,
        size.height * 0.23, size.width * 0.34, size.height * 0.23);
    path.cubicTo(size.width * 0.34, size.height * 0.22, size.width * 0.35,
        size.height * 0.22, size.width * 0.36, size.height * 0.22);
    path.cubicTo(size.width * 0.36, size.height * 0.22, size.width * 0.38,
        size.height / 5, size.width * 0.39, size.height / 5);
    path.cubicTo(size.width * 0.4, size.height / 5, size.width * 0.42,
        size.height / 5, size.width * 0.43, size.height / 5);
    path.cubicTo(size.width * 0.43, size.height * 0.19, size.width * 0.44,
        size.height * 0.19, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44,
        size.height * 0.17, size.width * 0.43, size.height * 0.17);
    path.cubicTo(size.width * 0.49, size.height * 0.22, size.width * 0.48,
        size.height * 0.29, size.width * 0.42, size.height / 3);
    //! path.cubicTo(NaN, NaN, NaN, NaN, size.width * 0.66, size.height * 0.49);
    path.cubicTo(size.width * 0.64, size.height * 0.49, size.width * 0.63,
        size.height * 0.49, size.width * 0.62, size.height * 0.49);
    path.cubicTo(size.width * 0.62, size.height * 0.49, size.width * 0.62,
        size.height / 2, size.width * 0.62, size.height / 2);
    path.cubicTo(size.width * 0.62, size.height / 2, size.width * 0.62,
        size.height * 0.51, size.width * 0.62, size.height * 0.51);
    path.cubicTo(size.width * 0.62, size.height * 0.51, size.width * 0.31,
        size.height * 0.51, size.width * 0.31, size.height * 0.51);
    path.cubicTo(size.width * 0.31, size.height * 0.51, size.width * 0.31,
        size.height * 0.51, size.width * 0.31, size.height * 0.51);
    path.cubicTo(size.width * 0.31, size.height / 2, size.width * 0.31,
        size.height / 2, size.width * 0.31, size.height * 0.49);
    path.cubicTo(size.width * 0.31, size.height * 0.49, size.width * 0.32,
        size.height * 0.48, size.width * 0.32, size.height * 0.48);
    path.cubicTo(size.width / 3, size.height * 0.48, size.width / 3,
        size.height * 0.47, size.width * 0.34, size.height * 0.47);
    path.cubicTo(size.width * 0.35, size.height * 0.47, size.width * 0.35,
        size.height * 0.47, size.width * 0.36, size.height * 0.46);
    path.cubicTo(size.width * 0.37, size.height * 0.46, size.width * 0.39,
        size.height * 0.46, size.width * 0.41, size.height * 0.46);
    path.cubicTo(size.width * 0.43, size.height * 0.46, size.width * 0.44,
        size.height * 0.46, size.width * 0.45, size.height * 0.46);
    path.cubicTo(size.width * 0.46, size.height * 0.46, size.width * 0.47,
        size.height * 0.47, size.width * 0.48, size.height * 0.47);
    path.cubicTo(size.width * 0.49, size.height * 0.47, size.width * 0.49,
        size.height * 0.48, size.width / 2, size.height * 0.48);
    path.cubicTo(size.width / 2, size.height * 0.49, size.width / 2,
        size.height / 2, size.width / 2, size.height / 2);
    path.cubicTo(size.width / 2, size.height * 0.51, size.width / 2,
        size.height * 0.51, size.width / 2, size.height * 0.52);
    path.cubicTo(size.width * 0.49, size.height * 0.52, size.width * 0.49,
        size.height * 0.53, size.width * 0.48, size.height * 0.53);
    path.cubicTo(size.width * 0.47, size.height * 0.54, size.width * 0.47,
        size.height * 0.54, size.width * 0.46, size.height * 0.54);
    path.cubicTo(size.width * 0.45, size.height * 0.55, size.width * 0.44,
        size.height * 0.55, size.width * 0.43, size.height * 0.55);
    path.cubicTo(size.width * 0.42, size.height * 0.56, size.width * 0.41,
        size.height * 0.56, size.width * 0.4, size.height * 0.56);
    path.cubicTo(size.width * 0.4, size.height * 0.56, size.width * 0.39,
        size.height * 0.56, size.width * 0.38, size.height * 0.56);
    path.cubicTo(size.width * 0.38, size.height * 0.56, size.width * 0.38,
        size.height * 0.58, size.width * 0.38, size.height * 0.58);
    path.cubicTo(size.width * 0.38, size.height * 0.58, size.width / 2,
        size.height * 0.58, size.width / 2, size.height * 0.58);
    path.cubicTo(size.width / 2, size.height * 0.58, size.width / 2,
        size.height * 0.61, size.width / 2, size.height * 0.61);
    path.cubicTo(size.width / 2, size.height * 0.61, size.width / 2,
        size.height * 0.16, size.width / 2, size.height * 0.16);
    canvas.drawPath(path, paint);

    // Path number 10

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.38, size.height * 0.04);
    path.cubicTo(size.width * 0.38, size.height * 0.05, size.width * 0.38,
        size.height * 0.05, size.width * 0.38, size.height * 0.05);
    path.cubicTo(size.width * 0.38, size.height * 0.06, size.width * 0.38,
        size.height * 0.06, size.width * 0.38, size.height * 0.07);
    path.cubicTo(size.width * 0.38, size.height * 0.07, size.width * 0.38,
        size.height * 0.07, size.width * 0.38, size.height * 0.07);
    path.cubicTo(size.width * 0.38, size.height * 0.07, size.width * 0.3,
        size.height * 0.07, size.width * 0.3, size.height * 0.07);
    path.cubicTo(size.width * 0.3, size.height * 0.07, size.width * 0.3,
        size.height * 0.07, size.width * 0.3, size.height * 0.07);
    path.cubicTo(size.width * 0.3, size.height * 0.07, size.width * 0.3,
        size.height * 0.06, size.width * 0.3, size.height * 0.06);
    path.cubicTo(size.width * 0.3, size.height * 0.06, size.width * 0.3,
        size.height * 0.05, size.width * 0.3, size.height * 0.05);
    path.cubicTo(size.width * 0.31, size.height * 0.04, size.width * 0.31,
        size.height * 0.03, size.width * 0.32, size.height * 0.03);
    path.cubicTo(size.width * 0.32, size.height * 0.03, size.width / 3,
        size.height * 0.02, size.width * 0.34, size.height * 0.02);
    path.cubicTo(size.width * 0.34, size.height * 0.02, size.width * 0.35,
        size.height * 0.01, size.width * 0.36, size.height * 0.01);
    path.cubicTo(size.width * 0.37, size.height * 0.01, size.width * 0.39,
        size.height * 0.01, size.width * 0.41, size.height * 0.01);
    path.cubicTo(size.width * 0.41, size.height * 0.01, size.width * 0.41,
        size.height * 0.01, size.width * 0.41, size.height * 0.01);
    path.cubicTo(size.width * 0.43, size.height * 0.01, size.width * 0.44,
        size.height * 0.01, size.width * 0.45, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.48,
        size.height * 0.02, size.width * 0.49, size.height * 0.02);
    path.cubicTo(size.width * 0.49, size.height * 0.02, size.width / 2,
        size.height * 0.03, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.05, size.width * 0.51, size.height * 0.06);
    path.cubicTo(size.width * 0.51, size.height * 0.06, size.width * 0.51,
        size.height * 0.07, size.width / 2, size.height * 0.08);
    path.cubicTo(size.width / 2, size.height * 0.08, size.width * 0.49,
        size.height * 0.09, size.width * 0.49, size.height * 0.09);
    path.cubicTo(size.width * 0.48, size.height * 0.1, size.width * 0.47,
        size.height * 0.1, size.width * 0.46, size.height * 0.1);
    path.cubicTo(size.width * 0.45, size.height * 0.11, size.width * 0.44,
        size.height * 0.11, size.width * 0.43, size.height * 0.11);
    path.cubicTo(size.width * 0.42, size.height * 0.11, size.width * 0.42,
        size.height * 0.12, size.width * 0.41, size.height * 0.12);
    path.cubicTo(size.width * 0.41, size.height * 0.12, size.width * 0.41,
        size.height * 0.12, size.width * 0.41, size.height * 0.12);
    path.cubicTo(size.width * 0.41, size.height * 0.12, size.width * 0.52,
        size.height * 0.12, size.width * 0.52, size.height * 0.12);
    path.cubicTo(size.width * 0.52, size.height * 0.12, size.width * 0.53,
        size.height * 0.16, size.width * 0.53, size.height * 0.16);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.3,
        size.height * 0.16, size.width * 0.3, size.height * 0.16);
    path.cubicTo(size.width * 0.3, size.height * 0.16, size.width * 0.3,
        size.height * 0.16, size.width * 0.3, size.height * 0.16);
    path.cubicTo(size.width * 0.3, size.height * 0.16, size.width * 0.3,
        size.height * 0.16, size.width * 0.3, size.height * 0.16);
    path.cubicTo(size.width * 0.3, size.height * 0.15, size.width * 0.3,
        size.height * 0.15, size.width * 0.3, size.height * 0.14);
    path.cubicTo(size.width * 0.3, size.height * 0.14, size.width * 0.3,
        size.height * 0.14, size.width * 0.31, size.height * 0.13);
    path.cubicTo(size.width * 0.31, size.height * 0.13, size.width * 0.31,
        size.height * 0.13, size.width * 0.31, size.height * 0.12);
    path.cubicTo(size.width * 0.31, size.height * 0.12, size.width * 0.32,
        size.height * 0.12, size.width * 0.32, size.height * 0.12);
    path.cubicTo(size.width * 0.32, size.height * 0.11, size.width / 3,
        size.height * 0.1, size.width * 0.34, size.height * 0.1);
    path.cubicTo(size.width * 0.34, size.height * 0.1, size.width * 0.34,
        size.height * 0.1, size.width * 0.34, size.height * 0.1);
    path.cubicTo(size.width * 0.34, size.height * 0.1, size.width * 0.35,
        size.height * 0.09, size.width * 0.36, size.height * 0.09);
    path.cubicTo(size.width * 0.37, size.height * 0.09, size.width * 0.38,
        size.height * 0.09, size.width * 0.39, size.height * 0.08);
    path.cubicTo(size.width * 0.4, size.height * 0.08, size.width * 0.42,
        size.height * 0.08, size.width * 0.43, size.height * 0.07);
    path.cubicTo(size.width * 0.43, size.height * 0.07, size.width * 0.43,
        size.height * 0.06, size.width * 0.43, size.height * 0.06);
    path.cubicTo(size.width * 0.43, size.height * 0.06, size.width * 0.43,
        size.height * 0.05, size.width * 0.43, size.height * 0.05);
    path.cubicTo(size.width * 0.43, size.height * 0.05, size.width * 0.43,
        size.height * 0.05, size.width * 0.42, size.height * 0.05);
    path.cubicTo(size.width * 0.41, size.height * 0.05, size.width * 0.4,
        size.height * 0.05, size.width * 0.39, size.height * 0.05);
    path.cubicTo(size.width * 0.39, size.height * 0.05, size.width * 0.38,
        size.height * 0.04, size.width * 0.38, size.height * 0.04);
    path.lineTo(size.width / 2, size.height * 0.16);
    path.cubicTo(size.width / 2, size.height * 0.16, size.width * 0.31,
        size.height * 0.16, size.width * 0.31, size.height * 0.16);
    path.cubicTo(size.width * 0.37, size.height * 0.16, size.width * 0.41,
        size.height / 5, size.width * 0.38, size.height / 4);
    path.cubicTo(size.width * 0.36, size.height * 0.27, size.width / 3,
        size.height * 0.28, size.width * 0.3, size.height * 0.28);
    path.cubicTo(size.width * 0.3, size.height * 0.27, size.width * 0.3,
        size.height * 0.27, size.width * 0.3, size.height * 0.27);
    path.cubicTo(size.width * 0.31, size.height * 0.26, size.width * 0.31,
        size.height * 0.26, size.width * 0.31, size.height * 0.26);
    path.cubicTo(size.width * 0.31, size.height / 4, size.width * 0.31,
        size.height / 4, size.width * 0.31, size.height / 4);
    path.cubicTo(size.width * 0.32, size.height / 4, size.width * 0.32,
        size.height * 0.24, size.width * 0.32, size.height * 0.24);
    path.cubicTo(size.width / 3, size.height * 0.23, size.width / 3,
        size.height * 0.23, size.width * 0.34, size.height * 0.23);
    path.cubicTo(size.width * 0.34, size.height * 0.22, size.width * 0.35,
        size.height * 0.22, size.width * 0.36, size.height * 0.22);
    path.cubicTo(size.width * 0.36, size.height * 0.22, size.width * 0.38,
        size.height / 5, size.width * 0.39, size.height / 5);
    path.cubicTo(size.width * 0.4, size.height / 5, size.width * 0.42,
        size.height / 5, size.width * 0.43, size.height / 5);
    path.cubicTo(size.width * 0.43, size.height * 0.19, size.width * 0.44,
        size.height * 0.19, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44,
        size.height * 0.17, size.width * 0.43, size.height * 0.17);
    path.cubicTo(size.width * 0.49, size.height * 0.22, size.width * 0.48,
        size.height * 0.29, size.width * 0.42, size.height / 3);
    //! path.cubicTo(NaN, NaN, NaN, NaN, size.width * 0.66, size.height * 0.49);
    path.cubicTo(size.width * 0.64, size.height * 0.49, size.width * 0.63,
        size.height * 0.49, size.width * 0.62, size.height * 0.49);
    path.cubicTo(size.width * 0.62, size.height * 0.49, size.width * 0.62,
        size.height / 2, size.width * 0.62, size.height / 2);
    path.cubicTo(size.width * 0.62, size.height / 2, size.width * 0.62,
        size.height * 0.51, size.width * 0.62, size.height * 0.51);
    path.cubicTo(size.width * 0.62, size.height * 0.51, size.width * 0.31,
        size.height * 0.51, size.width * 0.31, size.height * 0.51);
    path.cubicTo(size.width * 0.31, size.height * 0.51, size.width * 0.31,
        size.height * 0.51, size.width * 0.31, size.height * 0.51);
    path.cubicTo(size.width * 0.31, size.height / 2, size.width * 0.31,
        size.height / 2, size.width * 0.31, size.height * 0.49);
    path.cubicTo(size.width * 0.31, size.height * 0.49, size.width * 0.32,
        size.height * 0.48, size.width * 0.32, size.height * 0.48);
    path.cubicTo(size.width / 3, size.height * 0.48, size.width / 3,
        size.height * 0.47, size.width * 0.34, size.height * 0.47);
    path.cubicTo(size.width * 0.35, size.height * 0.47, size.width * 0.35,
        size.height * 0.47, size.width * 0.36, size.height * 0.46);
    path.cubicTo(size.width * 0.37, size.height * 0.46, size.width * 0.39,
        size.height * 0.46, size.width * 0.41, size.height * 0.46);
    path.cubicTo(size.width * 0.43, size.height * 0.46, size.width * 0.44,
        size.height * 0.46, size.width * 0.45, size.height * 0.46);
    path.cubicTo(size.width * 0.46, size.height * 0.46, size.width * 0.47,
        size.height * 0.47, size.width * 0.48, size.height * 0.47);
    path.cubicTo(size.width * 0.49, size.height * 0.47, size.width * 0.49,
        size.height * 0.48, size.width / 2, size.height * 0.48);
    path.cubicTo(size.width / 2, size.height * 0.49, size.width / 2,
        size.height / 2, size.width / 2, size.height / 2);
    path.cubicTo(size.width / 2, size.height * 0.51, size.width / 2,
        size.height * 0.51, size.width / 2, size.height * 0.52);
    path.cubicTo(size.width * 0.49, size.height * 0.52, size.width * 0.49,
        size.height * 0.53, size.width * 0.48, size.height * 0.53);
    path.cubicTo(size.width * 0.47, size.height * 0.54, size.width * 0.47,
        size.height * 0.54, size.width * 0.46, size.height * 0.54);
    path.cubicTo(size.width * 0.45, size.height * 0.55, size.width * 0.44,
        size.height * 0.55, size.width * 0.43, size.height * 0.55);
    path.cubicTo(size.width * 0.42, size.height * 0.56, size.width * 0.41,
        size.height * 0.56, size.width * 0.4, size.height * 0.56);
    path.cubicTo(size.width * 0.4, size.height * 0.56, size.width * 0.39,
        size.height * 0.56, size.width * 0.38, size.height * 0.56);
    path.cubicTo(size.width * 0.38, size.height * 0.56, size.width * 0.38,
        size.height * 0.58, size.width * 0.38, size.height * 0.58);
    path.cubicTo(size.width * 0.38, size.height * 0.58, size.width / 2,
        size.height * 0.58, size.width / 2, size.height * 0.58);
    path.cubicTo(size.width / 2, size.height * 0.58, size.width / 2,
        size.height * 0.61, size.width / 2, size.height * 0.61);
    path.cubicTo(size.width / 2, size.height * 0.61, size.width / 2,
        size.height * 0.16, size.width / 2, size.height * 0.16);
    canvas.drawPath(path, paint);

    // Path number 11

    paint.color = const Color(0xffff39a0);
    path = Path();
    path.lineTo(size.width, size.height * 0.12);
    path.cubicTo(size.width, size.height * 0.13, size.width * 0.98,
        size.height * 0.13, size.width * 0.98, size.height * 0.14);
    path.cubicTo(size.width * 0.98, size.height * 0.14, size.width * 0.97,
        size.height * 0.14, size.width * 0.97, size.height * 0.14);
    path.cubicTo(size.width * 0.97, size.height * 0.15, size.width * 0.96,
        size.height * 0.15, size.width * 0.95, size.height * 0.15);
    path.cubicTo(size.width * 0.95, size.height * 0.15, size.width * 0.94,
        size.height * 0.16, size.width * 0.93, size.height * 0.16);
    path.cubicTo(size.width * 0.93, size.height * 0.16, size.width * 0.92,
        size.height * 0.16, size.width * 0.91, size.height * 0.16);
    path.cubicTo(size.width * 0.9, size.height * 0.16, size.width * 0.9,
        size.height * 0.16, size.width * 0.89, size.height * 0.16);
    path.cubicTo(size.width * 0.88, size.height * 0.16, size.width * 0.88,
        size.height * 0.16, size.width * 0.87, size.height * 0.16);
    path.cubicTo(size.width * 0.86, size.height * 0.16, size.width * 0.85,
        size.height * 0.16, size.width * 0.85, size.height * 0.16);
    path.cubicTo(size.width * 0.84, size.height * 0.16, size.width * 0.84,
        size.height * 0.15, size.width * 0.83, size.height * 0.15);
    path.cubicTo(size.width * 0.82, size.height * 0.15, size.width * 0.82,
        size.height * 0.15, size.width * 0.82, size.height * 0.14);
    path.cubicTo(size.width * 0.81, size.height * 0.14, size.width * 0.81,
        size.height * 0.14, size.width * 0.81, size.height * 0.13);
    path.cubicTo(size.width * 0.8, size.height * 0.13, size.width * 0.8,
        size.height * 0.13, size.width * 0.8, size.height * 0.12);
    path.cubicTo(size.width * 0.8, size.height * 0.12, size.width * 0.86,
        size.height * 0.12, size.width * 0.86, size.height * 0.12);
    path.cubicTo(size.width * 0.86, size.height * 0.12, size.width * 0.86,
        size.height * 0.13, size.width * 0.86, size.height * 0.13);
    path.cubicTo(size.width * 0.86, size.height * 0.14, size.width * 0.86,
        size.height * 0.14, size.width * 0.86, size.height * 0.14);
    path.cubicTo(size.width * 0.87, size.height * 0.14, size.width * 0.88,
        size.height * 0.14, size.width * 0.89, size.height * 0.14);
    path.cubicTo(size.width * 0.9, size.height * 0.14, size.width * 0.91,
        size.height * 0.14, size.width * 0.92, size.height * 0.14);
    path.cubicTo(size.width * 0.92, size.height * 0.14, size.width * 0.92,
        size.height * 0.14, size.width * 0.92, size.height * 0.13);
    path.cubicTo(size.width * 0.92, size.height * 0.13, size.width * 0.92,
        size.height * 0.12, size.width * 0.92, size.height * 0.12);
    path.cubicTo(size.width * 0.96, size.height * 0.17, size.width * 0.96,
        size.height * 0.24, size.width * 0.91, size.height * 0.29);
    path.cubicTo(size.width * 0.91, size.height * 0.29, size.width * 0.91,
        size.height * 0.29, size.width * 0.91, size.height * 0.29);
    path.cubicTo(size.width * 0.9, size.height * 0.29, size.width * 0.9,
        size.height * 0.29, size.width * 0.9, size.height * 0.29);
    path.cubicTo(size.width * 0.9, size.height * 0.29, size.width * 0.9,
        size.height * 0.28, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.91, size.height * 0.28, size.width * 0.92,
        size.height * 0.28, size.width * 0.93, size.height * 0.28);
    path.cubicTo(size.width * 0.93, size.height * 0.27, size.width * 0.93,
        size.height * 0.27, size.width * 0.93, size.height * 0.27);
    path.cubicTo(size.width * 0.93, size.height * 0.26, size.width * 0.93,
        size.height * 0.26, size.width * 0.93, size.height * 0.26);
    path.cubicTo(size.width * 0.93, size.height / 4, size.width * 0.93,
        size.height / 4, size.width * 0.93, size.height / 4);
    path.cubicTo(size.width * 0.93, size.height / 4, size.width * 0.92,
        size.height / 4, size.width * 0.92, size.height / 4);
    path.cubicTo(size.width * 0.91, size.height / 4, size.width * 0.91,
        size.height / 4, size.width * 0.9, size.height / 4);
    path.cubicTo(size.width * 0.9, size.height / 4, size.width * 0.9,
        size.height * 0.26, size.width * 0.9, size.height * 0.26);
    path.cubicTo(size.width * 0.9, size.height * 0.26, size.width * 0.9,
        size.height * 0.27, size.width * 0.9, size.height * 0.27);
    path.cubicTo(size.width * 0.9, size.height * 0.27, size.width * 0.9,
        size.height * 0.27, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.9, size.height * 0.28, size.width * 0.81,
        size.height * 0.08, size.width * 0.81, size.height * 0.08);
    path.cubicTo(size.width * 0.81, size.height * 0.08, size.width * 0.81,
        size.height * 0.07, size.width * 0.81, size.height * 0.07);
    path.cubicTo(size.width * 0.81, size.height * 0.07, size.width * 0.81,
        size.height * 0.07, size.width * 0.81, size.height * 0.07);
    path.cubicTo(size.width * 0.81, size.height * 0.06, size.width * 0.81,
        size.height * 0.06, size.width * 0.81, size.height * 0.05);
    path.cubicTo(size.width * 0.82, size.height * 0.05, size.width * 0.82,
        size.height * 0.04, size.width * 0.82, size.height * 0.04);
    path.cubicTo(size.width * 0.83, size.height * 0.04, size.width * 0.83,
        size.height * 0.03, size.width * 0.84, size.height * 0.03);
    path.cubicTo(size.width * 0.84, size.height * 0.03, size.width * 0.85,
        size.height * 0.03, size.width * 0.85, size.height * 0.03);
    path.cubicTo(size.width * 0.87, size.height * 0.02, size.width * 0.88,
        size.height * 0.02, size.width * 0.9, size.height * 0.02);
    path.cubicTo(size.width * 0.91, size.height * 0.02, size.width * 0.92,
        size.height * 0.02, size.width * 0.93, size.height * 0.02);
    path.cubicTo(size.width * 0.94, size.height * 0.02, size.width * 0.94,
        size.height * 0.03, size.width * 0.95, size.height * 0.03);
    path.cubicTo(size.width * 0.96, size.height * 0.03, size.width * 0.96,
        size.height * 0.03, size.width * 0.97, size.height * 0.04);
    path.cubicTo(size.width * 0.97, size.height * 0.04, size.width * 0.98,
        size.height * 0.04, size.width * 0.98, size.height * 0.04);
    path.cubicTo(size.width * 0.98, size.height * 0.05, size.width * 0.98,
        size.height * 0.05, size.width * 0.98, size.height * 0.05);
    path.cubicTo(size.width, size.height * 0.06, size.width, size.height * 0.06,
        size.width, size.height * 0.07);
    path.cubicTo(size.width, size.height * 0.07, size.width, size.height * 0.07,
        size.width * 0.98, size.height * 0.08);
    path.cubicTo(size.width * 0.98, size.height * 0.08, size.width * 0.98,
        size.height * 0.08, size.width * 0.98, size.height * 0.08);
    path.cubicTo(size.width * 0.97, size.height * 0.09, size.width * 0.97,
        size.height * 0.09, size.width * 0.96, size.height * 0.09);
    path.cubicTo(size.width * 0.96, size.height * 0.09, size.width * 0.95,
        size.height * 0.09, size.width * 0.95, size.height * 0.1);
    path.cubicTo(size.width * 0.95, size.height * 0.1, size.width * 0.96,
        size.height * 0.1, size.width * 0.96, size.height * 0.1);
    path.cubicTo(size.width * 0.96, size.height * 0.1, size.width * 0.97,
        size.height * 0.1, size.width * 0.97, size.height * 0.1);
    path.cubicTo(size.width * 0.97, size.height * 0.11, size.width * 0.97,
        size.height * 0.11, size.width * 0.98, size.height * 0.11);
    path.cubicTo(size.width * 0.98, size.height * 0.11, size.width * 0.98,
        size.height * 0.11, size.width * 0.98, size.height * 0.11);
    path.cubicTo(size.width * 0.98, size.height * 0.12, size.width * 0.98,
        size.height * 0.12, size.width, size.height * 0.12);
    path.cubicTo(size.width, size.height * 0.12, size.width, size.height * 0.12,
        size.width, size.height * 0.12);
    canvas.drawPath(path, paint);

    // Path number 12

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.88, size.height * 0.05);
    path.cubicTo(size.width * 0.88, size.height * 0.05, size.width * 0.88,
        size.height * 0.06, size.width * 0.88, size.height * 0.06);
    path.cubicTo(size.width * 0.88, size.height * 0.06, size.width * 0.88,
        size.height * 0.06, size.width * 0.88, size.height * 0.06);
    path.cubicTo(size.width * 0.88, size.height * 0.06, size.width * 0.88,
        size.height * 0.07, size.width * 0.88, size.height * 0.07);
    path.cubicTo(size.width * 0.88, size.height * 0.07, size.width * 0.8,
        size.height * 0.07, size.width * 0.8, size.height * 0.07);
    path.cubicTo(size.width * 0.8, size.height * 0.07, size.width * 0.8,
        size.height * 0.07, size.width * 0.8, size.height * 0.07);
    path.cubicTo(size.width * 0.8, size.height * 0.07, size.width * 0.8,
        size.height * 0.06, size.width * 0.8, size.height * 0.06);
    path.cubicTo(size.width * 0.8, size.height * 0.06, size.width * 0.8,
        size.height * 0.06, size.width * 0.8, size.height * 0.06);
    path.cubicTo(size.width * 0.8, size.height * 0.05, size.width * 0.8,
        size.height * 0.04, size.width * 0.81, size.height * 0.04);
    path.cubicTo(size.width * 0.81, size.height * 0.03, size.width * 0.81,
        size.height * 0.03, size.width * 0.82, size.height * 0.03);
    path.cubicTo(size.width * 0.82, size.height * 0.02, size.width * 0.83,
        size.height * 0.02, size.width * 0.83, size.height * 0.02);
    path.cubicTo(size.width * 0.84, size.height * 0.01, size.width * 0.85,
        size.height * 0.01, size.width * 0.85, size.height * 0.01);
    path.cubicTo(size.width * 0.87, size.height * 0.01, size.width * 0.88,
        size.height * 0.01, size.width * 0.9, 0);
    path.cubicTo(size.width * 0.9, 0, size.width * 0.9, 0, size.width * 0.9, 0);
    path.cubicTo(size.width * 0.91, 0, size.width * 0.92, size.height * 0.01,
        size.width * 0.93, size.height * 0.01);
    path.cubicTo(size.width * 0.94, size.height * 0.01, size.width * 0.95,
        size.height * 0.01, size.width * 0.96, size.height * 0.01);
    path.cubicTo(size.width * 0.96, size.height * 0.01, size.width * 0.97,
        size.height * 0.02, size.width * 0.97, size.height * 0.02);
    path.cubicTo(size.width * 0.98, size.height * 0.02, size.width * 0.98,
        size.height * 0.03, size.width, size.height * 0.03);
    path.cubicTo(size.width, size.height * 0.04, size.width, size.height * 0.04,
        size.width, size.height * 0.04);
    path.cubicTo(size.width, size.height * 0.05, size.width, size.height * 0.05,
        size.width, size.height * 0.05);
    path.cubicTo(size.width, size.height * 0.06, size.width, size.height * 0.06,
        size.width, size.height * 0.07);
    path.cubicTo(size.width, size.height * 0.07, size.width, size.height * 0.07,
        size.width * 0.98, size.height * 0.08);
    path.cubicTo(size.width * 0.98, size.height * 0.08, size.width * 0.97,
        size.height * 0.08, size.width * 0.97, size.height * 0.08);
    path.cubicTo(size.width * 0.97, size.height * 0.08, size.width * 0.97,
        size.height * 0.09, size.width * 0.97, size.height * 0.09);
    path.cubicTo(size.width * 0.97, size.height * 0.09, size.width * 0.97,
        size.height * 0.09, size.width * 0.98, size.height * 0.09);
    path.cubicTo(size.width * 0.98, size.height * 0.09, size.width * 0.98,
        size.height * 0.09, size.width * 0.98, size.height * 0.1);
    path.cubicTo(size.width, size.height * 0.1, size.width, size.height * 0.1,
        size.width, size.height * 0.1);
    path.cubicTo(size.width, size.height * 0.1, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.12, size.width, size.height * 0.12,
        size.width, size.height * 0.13);
    path.cubicTo(size.width, size.height * 0.13, size.width * 0.98,
        size.height * 0.13, size.width * 0.98, size.height * 0.14);
    path.cubicTo(size.width * 0.97, size.height * 0.14, size.width * 0.97,
        size.height * 0.14, size.width * 0.96, size.height * 0.15);
    path.cubicTo(size.width * 0.95, size.height * 0.15, size.width * 0.94,
        size.height * 0.15, size.width * 0.94, size.height * 0.15);
    path.cubicTo(size.width * 0.93, size.height * 0.15, size.width * 0.92,
        size.height * 0.15, size.width * 0.91, size.height * 0.16);
    path.cubicTo(size.width * 0.91, size.height * 0.16, size.width * 0.9,
        size.height * 0.16, size.width * 0.89, size.height * 0.16);
    path.cubicTo(size.width * 0.89, size.height * 0.16, size.width * 0.89,
        size.height * 0.16, size.width * 0.89, size.height * 0.16);
    path.cubicTo(size.width * 0.88, size.height * 0.16, size.width * 0.88,
        size.height * 0.16, size.width * 0.87, size.height * 0.16);
    path.cubicTo(size.width * 0.86, size.height * 0.15, size.width * 0.85,
        size.height * 0.15, size.width * 0.85, size.height * 0.15);
    path.cubicTo(size.width * 0.84, size.height * 0.15, size.width * 0.83,
        size.height * 0.15, size.width * 0.83, size.height * 0.15);
    path.cubicTo(size.width * 0.82, size.height * 0.14, size.width * 0.82,
        size.height * 0.14, size.width * 0.81, size.height * 0.14);
    path.cubicTo(size.width * 0.81, size.height * 0.13, size.width * 0.8,
        size.height * 0.13, size.width * 0.8, size.height * 0.13);
    path.cubicTo(size.width * 0.8, size.height * 0.12, size.width * 0.79,
        size.height * 0.12, size.width * 0.79, size.height * 0.11);
    path.cubicTo(size.width * 0.79, size.height * 0.11, size.width * 0.79,
        size.height * 0.11, size.width * 0.79, size.height * 0.11);
    path.cubicTo(size.width * 0.79, size.height * 0.11, size.width * 0.86,
        size.height * 0.1, size.width * 0.86, size.height * 0.1);
    path.cubicTo(size.width * 0.86, size.height * 0.1, size.width * 0.86,
        size.height * 0.11, size.width * 0.86, size.height * 0.11);
    path.cubicTo(size.width * 0.87, size.height * 0.11, size.width * 0.87,
        size.height * 0.12, size.width * 0.87, size.height * 0.12);
    path.cubicTo(size.width * 0.87, size.height * 0.12, size.width * 0.87,
        size.height * 0.12, size.width * 0.87, size.height * 0.13);
    path.cubicTo(size.width * 0.88, size.height * 0.13, size.width * 0.88,
        size.height * 0.13, size.width * 0.89, size.height * 0.13);
    path.cubicTo(size.width * 0.9, size.height * 0.13, size.width * 0.91,
        size.height * 0.13, size.width * 0.91, size.height * 0.12);
    path.cubicTo(size.width * 0.91, size.height * 0.12, size.width * 0.91,
        size.height * 0.12, size.width * 0.91, size.height * 0.12);
    path.cubicTo(size.width * 0.91, size.height * 0.12, size.width * 0.92,
        size.height * 0.12, size.width * 0.92, size.height * 0.11);
    path.cubicTo(size.width * 0.92, size.height * 0.11, size.width * 0.91,
        size.height * 0.11, size.width * 0.91, size.height * 0.1);
    path.cubicTo(size.width * 0.91, size.height * 0.1, size.width * 0.91,
        size.height * 0.1, size.width * 0.9, size.height * 0.1);
    path.cubicTo(size.width * 0.9, size.height * 0.1, size.width * 0.9,
        size.height * 0.1, size.width * 0.9, size.height * 0.1);
    path.cubicTo(size.width * 0.9, size.height * 0.1, size.width * 0.89,
        size.height * 0.1, size.width * 0.89, size.height * 0.1);
    path.cubicTo(size.width * 0.89, size.height * 0.1, size.width * 0.89,
        size.height * 0.08, size.width * 0.89, size.height * 0.08);
    path.cubicTo(size.width * 0.89, size.height * 0.08, size.width * 0.9,
        size.height * 0.08, size.width * 0.9, size.height * 0.08);
    path.cubicTo(size.width * 0.91, size.height * 0.08, size.width * 0.92,
        size.height * 0.07, size.width * 0.93, size.height * 0.07);
    path.cubicTo(size.width * 0.96, size.height * 0.09, size.width * 0.98,
        size.height * 0.1, size.width, size.height * 0.12);
    //! path.cubicTo(NaN, NaN, NaN, NaN, size.width, size.height * 0.12);
    path.cubicTo(size.width, size.height * 0.12, size.width, size.height * 0.12,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width * 0.98,
        size.height * 0.11, size.width * 0.98, size.height * 0.11);
    path.cubicTo(size.width * 0.98, size.height * 0.11, size.width * 0.97,
        size.height * 0.11, size.width * 0.97, size.height * 0.11);
    path.cubicTo(size.width * 0.97, size.height * 0.11, size.width * 0.88,
        size.height * 0.05, size.width * 0.88, size.height * 0.05);
    path.lineTo(size.width, size.height * 0.12);
    path.cubicTo(size.width, size.height * 0.13, size.width * 0.98,
        size.height * 0.13, size.width * 0.98, size.height * 0.14);
    path.cubicTo(size.width * 0.98, size.height * 0.14, size.width * 0.97,
        size.height * 0.14, size.width * 0.97, size.height * 0.14);
    path.cubicTo(size.width * 0.97, size.height * 0.15, size.width * 0.96,
        size.height * 0.15, size.width * 0.95, size.height * 0.15);
    path.cubicTo(size.width * 0.95, size.height * 0.15, size.width * 0.94,
        size.height * 0.16, size.width * 0.93, size.height * 0.16);
    path.cubicTo(size.width * 0.93, size.height * 0.16, size.width * 0.92,
        size.height * 0.16, size.width * 0.91, size.height * 0.16);
    path.cubicTo(size.width * 0.9, size.height * 0.16, size.width * 0.9,
        size.height * 0.16, size.width * 0.89, size.height * 0.16);
    path.cubicTo(size.width * 0.88, size.height * 0.16, size.width * 0.88,
        size.height * 0.16, size.width * 0.87, size.height * 0.16);
    path.cubicTo(size.width * 0.86, size.height * 0.16, size.width * 0.85,
        size.height * 0.16, size.width * 0.85, size.height * 0.16);
    path.cubicTo(size.width * 0.84, size.height * 0.16, size.width * 0.84,
        size.height * 0.15, size.width * 0.83, size.height * 0.15);
    path.cubicTo(size.width * 0.82, size.height * 0.15, size.width * 0.82,
        size.height * 0.15, size.width * 0.82, size.height * 0.14);
    path.cubicTo(size.width * 0.81, size.height * 0.14, size.width * 0.81,
        size.height * 0.14, size.width * 0.81, size.height * 0.13);
    path.cubicTo(size.width * 0.8, size.height * 0.13, size.width * 0.8,
        size.height * 0.13, size.width * 0.8, size.height * 0.12);
    path.cubicTo(size.width * 0.8, size.height * 0.12, size.width * 0.86,
        size.height * 0.12, size.width * 0.86, size.height * 0.12);
    path.cubicTo(size.width * 0.86, size.height * 0.12, size.width * 0.86,
        size.height * 0.13, size.width * 0.86, size.height * 0.13);
    path.cubicTo(size.width * 0.86, size.height * 0.14, size.width * 0.86,
        size.height * 0.14, size.width * 0.86, size.height * 0.14);
    path.cubicTo(size.width * 0.87, size.height * 0.14, size.width * 0.88,
        size.height * 0.14, size.width * 0.89, size.height * 0.14);
    path.cubicTo(size.width * 0.9, size.height * 0.14, size.width * 0.91,
        size.height * 0.14, size.width * 0.92, size.height * 0.14);
    path.cubicTo(size.width * 0.92, size.height * 0.14, size.width * 0.92,
        size.height * 0.14, size.width * 0.92, size.height * 0.13);
    path.cubicTo(size.width * 0.92, size.height * 0.13, size.width * 0.92,
        size.height * 0.12, size.width * 0.92, size.height * 0.12);
    path.cubicTo(size.width * 0.96, size.height * 0.17, size.width * 0.96,
        size.height * 0.24, size.width * 0.91, size.height * 0.29);
    path.cubicTo(size.width * 0.91, size.height * 0.29, size.width * 0.91,
        size.height * 0.29, size.width * 0.91, size.height * 0.29);
    path.cubicTo(size.width * 0.9, size.height * 0.29, size.width * 0.9,
        size.height * 0.29, size.width * 0.9, size.height * 0.29);
    path.cubicTo(size.width * 0.9, size.height * 0.29, size.width * 0.9,
        size.height * 0.28, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.91, size.height * 0.28, size.width * 0.92,
        size.height * 0.28, size.width * 0.93, size.height * 0.28);
    path.cubicTo(size.width * 0.93, size.height * 0.27, size.width * 0.93,
        size.height * 0.27, size.width * 0.93, size.height * 0.27);
    path.cubicTo(size.width * 0.93, size.height * 0.26, size.width * 0.93,
        size.height * 0.26, size.width * 0.93, size.height * 0.26);
    path.cubicTo(size.width * 0.93, size.height / 4, size.width * 0.93,
        size.height / 4, size.width * 0.93, size.height / 4);
    path.cubicTo(size.width * 0.93, size.height / 4, size.width * 0.92,
        size.height / 4, size.width * 0.92, size.height / 4);
    path.cubicTo(size.width * 0.91, size.height / 4, size.width * 0.91,
        size.height / 4, size.width * 0.9, size.height / 4);
    path.cubicTo(size.width * 0.9, size.height / 4, size.width * 0.9,
        size.height * 0.26, size.width * 0.9, size.height * 0.26);
    path.cubicTo(size.width * 0.9, size.height * 0.26, size.width * 0.9,
        size.height * 0.27, size.width * 0.9, size.height * 0.27);
    path.cubicTo(size.width * 0.9, size.height * 0.27, size.width * 0.9,
        size.height * 0.27, size.width * 0.9, size.height * 0.28);
    path.cubicTo(size.width * 0.9, size.height * 0.28, size.width * 0.81,
        size.height * 0.08, size.width * 0.81, size.height * 0.08);
    path.cubicTo(size.width * 0.81, size.height * 0.08, size.width * 0.81,
        size.height * 0.07, size.width * 0.81, size.height * 0.07);
    path.cubicTo(size.width * 0.81, size.height * 0.07, size.width * 0.81,
        size.height * 0.07, size.width * 0.81, size.height * 0.07);
    path.cubicTo(size.width * 0.81, size.height * 0.06, size.width * 0.81,
        size.height * 0.06, size.width * 0.81, size.height * 0.05);
    path.cubicTo(size.width * 0.82, size.height * 0.05, size.width * 0.82,
        size.height * 0.04, size.width * 0.82, size.height * 0.04);
    path.cubicTo(size.width * 0.83, size.height * 0.04, size.width * 0.83,
        size.height * 0.03, size.width * 0.84, size.height * 0.03);
    path.cubicTo(size.width * 0.84, size.height * 0.03, size.width * 0.85,
        size.height * 0.03, size.width * 0.85, size.height * 0.03);
    path.cubicTo(size.width * 0.87, size.height * 0.02, size.width * 0.88,
        size.height * 0.02, size.width * 0.9, size.height * 0.02);
    path.cubicTo(size.width * 0.91, size.height * 0.02, size.width * 0.92,
        size.height * 0.02, size.width * 0.93, size.height * 0.02);
    path.cubicTo(size.width * 0.94, size.height * 0.02, size.width * 0.94,
        size.height * 0.03, size.width * 0.95, size.height * 0.03);
    path.cubicTo(size.width * 0.96, size.height * 0.03, size.width * 0.96,
        size.height * 0.03, size.width * 0.97, size.height * 0.04);
    path.cubicTo(size.width * 0.97, size.height * 0.04, size.width * 0.98,
        size.height * 0.04, size.width * 0.98, size.height * 0.04);
    path.cubicTo(size.width * 0.98, size.height * 0.05, size.width * 0.98,
        size.height * 0.05, size.width * 0.98, size.height * 0.05);
    path.cubicTo(size.width, size.height * 0.06, size.width, size.height * 0.06,
        size.width, size.height * 0.07);
    path.cubicTo(size.width, size.height * 0.07, size.width, size.height * 0.07,
        size.width * 0.98, size.height * 0.08);
    path.cubicTo(size.width * 0.98, size.height * 0.08, size.width * 0.98,
        size.height * 0.08, size.width * 0.98, size.height * 0.08);
    path.cubicTo(size.width * 0.97, size.height * 0.09, size.width * 0.97,
        size.height * 0.09, size.width * 0.96, size.height * 0.09);
    path.cubicTo(size.width * 0.96, size.height * 0.09, size.width * 0.95,
        size.height * 0.09, size.width * 0.95, size.height * 0.1);
    path.cubicTo(size.width * 0.95, size.height * 0.1, size.width * 0.96,
        size.height * 0.1, size.width * 0.96, size.height * 0.1);
    path.cubicTo(size.width * 0.96, size.height * 0.1, size.width * 0.97,
        size.height * 0.1, size.width * 0.97, size.height * 0.1);
    path.cubicTo(size.width * 0.97, size.height * 0.11, size.width * 0.97,
        size.height * 0.11, size.width * 0.98, size.height * 0.11);
    path.cubicTo(size.width * 0.98, size.height * 0.11, size.width * 0.98,
        size.height * 0.11, size.width * 0.98, size.height * 0.11);
    path.cubicTo(size.width * 0.98, size.height * 0.12, size.width * 0.98,
        size.height * 0.12, size.width, size.height * 0.12);
    path.cubicTo(size.width, size.height * 0.12, size.width, size.height * 0.12,
        size.width, size.height * 0.12);
    canvas.drawPath(path, paint);

    // Path number 13

    paint.color = const Color(0xff59e869);
    path = Path();
    path.lineTo(size.width * 0.26, size.height * 0.18);
    path.cubicTo(size.width * 0.26, size.height / 5, size.width * 0.26,
        size.height * 0.22, size.width * 0.26, size.height * 0.23);
    path.cubicTo(size.width * 0.26, size.height / 4, size.width * 0.26,
        size.height * 0.26, size.width * 0.26, size.height * 0.27);
    path.cubicTo(size.width * 0.26, size.height * 0.28, size.width * 0.26,
        size.height * 0.29, size.width * 0.26, size.height * 0.3);
    path.cubicTo(size.width * 0.26, size.height * 0.3, size.width / 4,
        size.height * 0.32, size.width / 4, size.height * 0.32);
    path.cubicTo(size.width / 4, size.height * 0.34, size.width / 4,
        size.height * 0.35, size.width / 4, size.height * 0.36);
    path.cubicTo(size.width / 4, size.height * 0.37, size.width / 4,
        size.height * 0.37, size.width * 0.24, size.height * 0.38);
    path.cubicTo(size.width * 0.24, size.height * 0.39, size.width * 0.23,
        size.height * 0.39, size.width * 0.22, size.height * 0.4);
    path.cubicTo(size.width / 5, size.height * 0.4, size.width / 5,
        size.height * 0.41, size.width * 0.19, size.height * 0.41);
    path.cubicTo(size.width * 0.18, size.height * 0.41, size.width * 0.16,
        size.height * 0.41, size.width * 0.15, size.height * 0.41);
    path.cubicTo(size.width * 0.14, size.height * 0.41, size.width * 0.13,
        size.height * 0.41, size.width * 0.12, size.height * 0.41);
    path.cubicTo(size.width * 0.1, size.height * 0.41, size.width * 0.1,
        size.height * 0.4, size.width * 0.09, size.height * 0.4);
    path.cubicTo(size.width * 0.08, size.height * 0.39, size.width * 0.07,
        size.height * 0.39, size.width * 0.06, size.height * 0.38);
    path.cubicTo(size.width * 0.06, size.height * 0.37, size.width * 0.05,
        size.height * 0.37, size.width * 0.05, size.height * 0.36);
    path.cubicTo(size.width * 0.05, size.height * 0.36, size.width * 0.13,
        size.height * 0.35, size.width * 0.13, size.height * 0.35);
    path.cubicTo(size.width * 0.13, size.height * 0.36, size.width * 0.13,
        size.height * 0.36, size.width * 0.13, size.height * 0.37);
    path.cubicTo(size.width * 0.13, size.height * 0.37, size.width * 0.13,
        size.height * 0.38, size.width * 0.14, size.height * 0.38);
    path.cubicTo(size.width * 0.14, size.height * 0.38, size.width * 0.15,
        size.height * 0.38, size.width * 0.16, size.height * 0.38);
    path.cubicTo(size.width * 0.17, size.height * 0.38, size.width * 0.18,
        size.height * 0.38, size.width * 0.19, size.height * 0.38);
    path.cubicTo(size.width * 0.19, size.height * 0.36, size.width * 0.19,
        size.height * 0.35, size.width * 0.19, size.height / 3);
    path.cubicTo(size.width * 0.19, size.height * 0.32, size.width * 0.19,
        size.height * 0.3, size.width * 0.19, size.height * 0.28);
    path.cubicTo(size.width * 0.19, size.height * 0.28, size.width * 0.26,
        size.height * 0.28, size.width * 0.26, size.height * 0.28);
    path.cubicTo(size.width * 0.26, size.height * 0.28, size.width * 0.26,
        size.height * 0.18, size.width * 0.26, size.height * 0.18);
    canvas.drawPath(path, paint);

    // Path number 14

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.18, size.height * 0.37);
    path.cubicTo(size.width * 0.18, size.height * 0.36, size.width * 0.18,
        size.height * 0.35, size.width * 0.18, size.height / 3);
    path.cubicTo(size.width * 0.18, size.height * 0.32, size.width * 0.18,
        size.height * 0.3, size.width * 0.18, size.height * 0.28);
    path.cubicTo(size.width * 0.18, size.height * 0.28, size.width * 0.18,
        size.height * 0.28, size.width * 0.18, size.height * 0.28);
    path.cubicTo(size.width * 0.18, size.height * 0.28, size.width * 0.27,
        size.height * 0.27, size.width * 0.27, size.height * 0.27);
    path.cubicTo(size.width * 0.27, size.height * 0.27, size.width * 0.27,
        size.height * 0.28, size.width * 0.27, size.height * 0.28);
    path.cubicTo(size.width * 0.27, size.height * 0.3, size.width * 0.27,
        size.height * 0.31, size.width * 0.27, size.height / 3);
    path.cubicTo(size.width * 0.27, size.height * 0.34, size.width * 0.27,
        size.height * 0.35, size.width * 0.27, size.height * 0.36);
    path.cubicTo(size.width * 0.27, size.height * 0.37, size.width * 0.27,
        size.height * 0.38, size.width * 0.27, size.height * 0.39);
    path.cubicTo(size.width * 0.27, size.height * 0.39, size.width * 0.26,
        size.height * 0.42, size.width * 0.26, size.height * 0.42);
    path.cubicTo(size.width * 0.26, size.height * 0.43, size.width * 0.26,
        size.height * 0.44, size.width * 0.26, size.height * 0.45);
    path.cubicTo(size.width * 0.26, size.height * 0.46, size.width * 0.26,
        size.height * 0.47, size.width / 4, size.height * 0.48);
    path.cubicTo(size.width * 0.24, size.height * 0.48, size.width * 0.24,
        size.height * 0.49, size.width * 0.23, size.height / 2);
    path.cubicTo(size.width * 0.22, size.height / 2, size.width / 5,
        size.height * 0.51, size.width * 0.19, size.height * 0.51);
    path.cubicTo(size.width * 0.18, size.height * 0.51, size.width * 0.16,
        size.height * 0.51, size.width * 0.15, size.height * 0.51);
    path.cubicTo(size.width * 0.14, size.height * 0.51, size.width * 0.13,
        size.height * 0.51, size.width * 0.11, size.height * 0.51);
    path.cubicTo(size.width * 0.1, size.height * 0.51, size.width * 0.09,
        size.height / 2, size.width * 0.08, size.height / 2);
    path.cubicTo(size.width * 0.07, size.height * 0.49, size.width * 0.07,
        size.height * 0.49, size.width * 0.06, size.height * 0.48);
    path.cubicTo(size.width * 0.05, size.height * 0.47, size.width * 0.05,
        size.height * 0.46, size.width * 0.05, size.height * 0.45);
    path.cubicTo(size.width * 0.05, size.height * 0.45, size.width * 0.04,
        size.height * 0.45, size.width * 0.04, size.height * 0.45);
    path.cubicTo(size.width * 0.04, size.height * 0.45, size.width * 0.14,
        size.height * 0.44, size.width * 0.14, size.height * 0.44);
    path.cubicTo(size.width * 0.14, size.height * 0.44, size.width * 0.14,
        size.height * 0.45, size.width * 0.14, size.height * 0.45);
    path.cubicTo(size.width * 0.14, size.height * 0.45, size.width * 0.14,
        size.height * 0.46, size.width * 0.14, size.height * 0.46);
    path.cubicTo(size.width * 0.14, size.height * 0.46, size.width * 0.14,
        size.height * 0.47, size.width * 0.14, size.height * 0.47);
    path.cubicTo(size.width * 0.15, size.height * 0.47, size.width * 0.16,
        size.height * 0.47, size.width * 0.16, size.height * 0.47);
    path.cubicTo(size.width * 0.16, size.height * 0.47, size.width * 0.18,
        size.height * 0.37, size.width * 0.18, size.height * 0.37);
    path.lineTo(size.width * 0.26, size.height * 0.18);
    path.cubicTo(size.width * 0.26, size.height / 5, size.width * 0.26,
        size.height * 0.22, size.width * 0.26, size.height * 0.23);
    path.cubicTo(size.width * 0.26, size.height / 4, size.width * 0.26,
        size.height * 0.26, size.width * 0.26, size.height * 0.27);
    path.cubicTo(size.width * 0.26, size.height * 0.28, size.width * 0.26,
        size.height * 0.29, size.width * 0.26, size.height * 0.3);
    path.cubicTo(size.width * 0.26, size.height * 0.3, size.width / 4,
        size.height * 0.32, size.width / 4, size.height * 0.32);
    path.cubicTo(size.width / 4, size.height * 0.34, size.width / 4,
        size.height * 0.35, size.width / 4, size.height * 0.36);
    path.cubicTo(size.width / 4, size.height * 0.37, size.width / 4,
        size.height * 0.37, size.width * 0.24, size.height * 0.38);
    path.cubicTo(size.width * 0.24, size.height * 0.39, size.width * 0.23,
        size.height * 0.39, size.width * 0.22, size.height * 0.4);
    path.cubicTo(size.width / 5, size.height * 0.4, size.width / 5,
        size.height * 0.41, size.width * 0.19, size.height * 0.41);
    path.cubicTo(size.width * 0.18, size.height * 0.41, size.width * 0.16,
        size.height * 0.41, size.width * 0.15, size.height * 0.41);
    path.cubicTo(size.width * 0.14, size.height * 0.41, size.width * 0.13,
        size.height * 0.41, size.width * 0.12, size.height * 0.41);
    path.cubicTo(size.width * 0.1, size.height * 0.41, size.width * 0.1,
        size.height * 0.4, size.width * 0.09, size.height * 0.4);
    path.cubicTo(size.width * 0.08, size.height * 0.39, size.width * 0.07,
        size.height * 0.39, size.width * 0.06, size.height * 0.38);
    path.cubicTo(size.width * 0.06, size.height * 0.37, size.width * 0.05,
        size.height * 0.37, size.width * 0.05, size.height * 0.36);
    path.cubicTo(size.width * 0.05, size.height * 0.36, size.width * 0.13,
        size.height * 0.35, size.width * 0.13, size.height * 0.35);
    path.cubicTo(size.width * 0.13, size.height * 0.36, size.width * 0.13,
        size.height * 0.36, size.width * 0.13, size.height * 0.37);
    path.cubicTo(size.width * 0.13, size.height * 0.37, size.width * 0.13,
        size.height * 0.38, size.width * 0.14, size.height * 0.38);
    path.cubicTo(size.width * 0.14, size.height * 0.38, size.width * 0.15,
        size.height * 0.38, size.width * 0.16, size.height * 0.38);
    path.cubicTo(size.width * 0.17, size.height * 0.38, size.width * 0.18,
        size.height * 0.38, size.width * 0.19, size.height * 0.38);
    path.cubicTo(size.width * 0.19, size.height * 0.36, size.width * 0.19,
        size.height * 0.35, size.width * 0.19, size.height / 3);
    path.cubicTo(size.width * 0.19, size.height * 0.32, size.width * 0.19,
        size.height * 0.3, size.width * 0.19, size.height * 0.28);
    path.cubicTo(size.width * 0.19, size.height * 0.28, size.width * 0.26,
        size.height * 0.28, size.width * 0.26, size.height * 0.28);
    path.cubicTo(size.width * 0.26, size.height * 0.28, size.width * 0.26,
        size.height * 0.18, size.width * 0.26, size.height * 0.18);
    canvas.drawPath(path, paint);

    // Path number 15

    paint.color = const Color(0xff59e869);
    path = Path();
    path.lineTo(size.width * 0.72, size.height * 0.19);
    path.cubicTo(size.width * 0.72, size.height / 5, size.width * 0.72,
        size.height * 0.23, size.width * 0.72, size.height / 4);
    path.cubicTo(size.width * 0.72, size.height / 4, size.width * 0.72,
        size.height * 0.26, size.width * 0.72, size.height * 0.26);
    path.cubicTo(size.width * 0.72, size.height * 0.26, size.width * 0.72,
        size.height * 0.26, size.width * 0.72, size.height * 0.27);
    path.cubicTo(size.width * 0.72, size.height * 0.27, size.width * 0.66,
        size.height * 0.27, size.width * 0.66, size.height * 0.27);
    path.cubicTo(size.width * 0.66, size.height * 0.26, size.width * 0.66,
        size.height * 0.26, size.width * 0.66, size.height / 4);
    path.cubicTo(size.width * 0.66, size.height * 0.24, size.width * 0.66,
        size.height * 0.24, size.width * 0.66, size.height * 0.23);
    path.cubicTo(size.width * 0.66, size.height * 0.22, size.width * 0.66,
        size.height / 5, size.width * 0.66, size.height * 0.18);
    path.cubicTo(size.width * 0.66, size.height * 0.18, size.width * 0.73,
        size.height * 0.18, size.width * 0.73, size.height * 0.18);
    path.cubicTo(size.width * 0.73, size.height * 0.18, size.width * 0.72,
        size.height * 0.19, size.width * 0.72, size.height * 0.19);
    canvas.drawPath(path, paint);

    // Path number 16

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.73, size.height * 0.18);
    path.cubicTo(size.width * 0.73, size.height * 0.18, size.width * 0.64,
        size.height * 0.18, size.width * 0.64, size.height * 0.18);
    path.cubicTo(size.width * 0.64, size.height * 0.18, size.width * 0.64,
        size.height * 0.19, size.width * 0.64, size.height * 0.19);
    path.cubicTo(size.width * 0.64, size.height / 5, size.width * 0.64,
        size.height * 0.22, size.width * 0.64, size.height * 0.24);
    path.cubicTo(size.width * 0.64, size.height / 4, size.width * 0.64,
        size.height / 4, size.width * 0.64, size.height * 0.26);
    path.cubicTo(size.width * 0.64, size.height * 0.26, size.width * 0.64,
        size.height * 0.27, size.width * 0.64, size.height * 0.27);
    path.cubicTo(size.width * 0.64, size.height * 0.27, size.width * 0.64,
        size.height * 0.28, size.width * 0.64, size.height * 0.28);
    path.cubicTo(size.width * 0.64, size.height * 0.28, size.width * 0.72,
        size.height * 0.28, size.width * 0.72, size.height * 0.28);
    path.cubicTo(size.width * 0.72, size.height * 0.28, size.width * 0.72,
        size.height * 0.27, size.width * 0.72, size.height * 0.27);
    path.cubicTo(size.width * 0.72, size.height * 0.27, size.width * 0.72,
        size.height * 0.27, size.width * 0.72, size.height * 0.26);
    path.cubicTo(size.width * 0.72, size.height * 0.26, size.width * 0.72,
        size.height / 4, size.width * 0.72, size.height / 4);
    path.cubicTo(size.width * 0.72, size.height * 0.23, size.width * 0.72,
        size.height / 5, size.width * 0.72, size.height * 0.19);
    path.cubicTo(size.width * 0.72, size.height * 0.17, size.width * 0.72,
        size.height * 0.15, size.width * 0.73, size.height * 0.13);
    path.cubicTo(size.width * 0.73, size.height * 0.13, size.width * 0.73,
        size.height * 0.13, size.width * 0.73, size.height * 0.13);
    path.cubicTo(size.width * 0.73, size.height * 0.13, size.width * 0.73,
        size.height * 0.18, size.width * 0.73, size.height * 0.18);
    path.lineTo(size.width * 0.72, size.height * 0.19);
    path.cubicTo(size.width * 0.72, size.height / 5, size.width * 0.72,
        size.height * 0.23, size.width * 0.72, size.height / 4);
    path.cubicTo(size.width * 0.72, size.height / 4, size.width * 0.72,
        size.height * 0.26, size.width * 0.72, size.height * 0.26);
    path.cubicTo(size.width * 0.72, size.height * 0.26, size.width * 0.72,
        size.height * 0.26, size.width * 0.72, size.height * 0.27);
    path.cubicTo(size.width * 0.72, size.height * 0.27, size.width * 0.66,
        size.height * 0.27, size.width * 0.66, size.height * 0.27);
    path.cubicTo(size.width * 0.66, size.height * 0.26, size.width * 0.66,
        size.height * 0.26, size.width * 0.66, size.height / 4);
    path.cubicTo(size.width * 0.66, size.height * 0.24, size.width * 0.66,
        size.height * 0.24, size.width * 0.66, size.height * 0.23);
    path.cubicTo(size.width * 0.66, size.height * 0.22, size.width * 0.66,
        size.height / 5, size.width * 0.66, size.height * 0.18);
    path.cubicTo(size.width * 0.66, size.height * 0.18, size.width * 0.73,
        size.height * 0.18, size.width * 0.73, size.height * 0.18);
    path.cubicTo(size.width * 0.73, size.height * 0.18, size.width * 0.72,
        size.height * 0.19, size.width * 0.72, size.height * 0.19);
    canvas.drawPath(path, paint);

    // Path number 17

    paint.color = const Color(0xff59e869);
    path = Path();
    path.lineTo(size.width * 0.76, size.height * 0.11);
    path.cubicTo(size.width * 0.76, size.height * 0.11, size.width * 0.73,
        size.height * 0.11, size.width * 0.73, size.height * 0.11);
    path.cubicTo(size.width * 0.73, size.height * 0.11, size.width * 0.76,
        size.height * 0.13, size.width * 0.76, size.height * 0.13);
    path.cubicTo(size.width * 0.76, size.height * 0.13, size.width * 0.73,
        size.height * 0.14, size.width * 0.73, size.height * 0.14);
    path.cubicTo(size.width * 0.73, size.height * 0.14, size.width * 0.71,
        size.height * 0.12, size.width * 0.71, size.height * 0.12);
    path.cubicTo(size.width * 0.71, size.height * 0.12, size.width * 0.68,
        size.height * 0.15, size.width * 0.68, size.height * 0.15);
    path.cubicTo(size.width * 0.68, size.height * 0.15, size.width * 0.65,
        size.height * 0.14, size.width * 0.65, size.height * 0.14);
    path.cubicTo(size.width * 0.65, size.height * 0.14, size.width * 0.69,
        size.height * 0.11, size.width * 0.69, size.height * 0.11);
    path.cubicTo(size.width * 0.69, size.height * 0.11, size.width * 0.65,
        size.height * 0.11, size.width * 0.65, size.height * 0.11);
    path.cubicTo(size.width * 0.65, size.height * 0.11, size.width * 0.65,
        size.height * 0.09, size.width * 0.65, size.height * 0.09);
    path.cubicTo(size.width * 0.65, size.height * 0.09, size.width * 0.69,
        size.height * 0.1, size.width * 0.69, size.height * 0.1);
    path.cubicTo(size.width * 0.69, size.height * 0.1, size.width * 0.69,
        size.height * 0.08, size.width * 0.69, size.height * 0.08);
    path.cubicTo(size.width * 0.69, size.height * 0.08, size.width * 0.73,
        size.height * 0.08, size.width * 0.73, size.height * 0.08);
    path.cubicTo(size.width * 0.73, size.height * 0.08, size.width * 0.72,
        size.height * 0.1, size.width * 0.72, size.height * 0.1);
    path.cubicTo(size.width * 0.72, size.height * 0.1, size.width * 0.76,
        size.height * 0.09, size.width * 0.76, size.height * 0.09);
    path.cubicTo(size.width * 0.76, size.height * 0.09, size.width * 0.76,
        size.height * 0.11, size.width * 0.76, size.height * 0.11);
    path.cubicTo(size.width * 0.76, size.height * 0.11, size.width * 0.76,
        size.height * 0.11, size.width * 0.76, size.height * 0.11);
    canvas.drawPath(path, paint);

    // Path number 18

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.73, size.height * 0.09);
    path.cubicTo(size.width * 0.73, size.height * 0.09, size.width * 0.77,
        size.height * 0.08, size.width * 0.77, size.height * 0.08);
    path.cubicTo(size.width * 0.77, size.height * 0.08, size.width * 0.77,
        size.height * 0.12, size.width * 0.77, size.height * 0.12);
    path.cubicTo(size.width * 0.77, size.height * 0.12, size.width * 0.75,
        size.height * 0.12, size.width * 0.75, size.height * 0.12);
    path.cubicTo(size.width * 0.75, size.height * 0.12, size.width * 0.77,
        size.height * 0.13, size.width * 0.77, size.height * 0.13);
    path.cubicTo(size.width * 0.77, size.height * 0.13, size.width * 0.73,
        size.height * 0.15, size.width * 0.73, size.height * 0.15);
    path.cubicTo(size.width * 0.73, size.height * 0.15, size.width * 0.71,
        size.height * 0.13, size.width * 0.71, size.height * 0.13);
    path.cubicTo(size.width * 0.71, size.height * 0.13, size.width * 0.69,
        size.height * 0.16, size.width * 0.69, size.height * 0.16);
    path.cubicTo(size.width * 0.69, size.height * 0.16, size.width * 0.64,
        size.height * 0.14, size.width * 0.64, size.height * 0.14);
    path.cubicTo(size.width * 0.64, size.height * 0.14, size.width * 0.67,
        size.height * 0.12, size.width * 0.67, size.height * 0.12);
    path.cubicTo(size.width * 0.67, size.height * 0.12, size.width * 0.64,
        size.height * 0.12, size.width * 0.64, size.height * 0.12);
    path.cubicTo(size.width * 0.64, size.height * 0.12, size.width * 0.65,
        size.height * 0.08, size.width * 0.65, size.height * 0.08);
    path.cubicTo(size.width * 0.65, size.height * 0.08, size.width * 0.68,
        size.height * 0.09, size.width * 0.68, size.height * 0.09);
    path.cubicTo(size.width * 0.68, size.height * 0.09, size.width * 0.68,
        size.height * 0.07, size.width * 0.68, size.height * 0.07);
    path.cubicTo(size.width * 0.68, size.height * 0.07, size.width * 0.74,
        size.height * 0.07, size.width * 0.74, size.height * 0.07);
    path.cubicTo(size.width * 0.74, size.height * 0.07, size.width * 0.73,
        size.height * 0.09, size.width * 0.73, size.height * 0.09);
    path.cubicTo(size.width * 0.73, size.height * 0.09, size.width * 0.73,
        size.height * 0.09, size.width * 0.73, size.height * 0.09);
    path.lineTo(size.width * 0.76, size.height * 0.11);
    path.cubicTo(size.width * 0.76, size.height * 0.11, size.width * 0.73,
        size.height * 0.11, size.width * 0.73, size.height * 0.11);
    path.cubicTo(size.width * 0.73, size.height * 0.11, size.width * 0.76,
        size.height * 0.13, size.width * 0.76, size.height * 0.13);
    path.cubicTo(size.width * 0.76, size.height * 0.13, size.width * 0.73,
        size.height * 0.14, size.width * 0.73, size.height * 0.14);
    path.cubicTo(size.width * 0.73, size.height * 0.14, size.width * 0.71,
        size.height * 0.12, size.width * 0.71, size.height * 0.12);
    path.cubicTo(size.width * 0.71, size.height * 0.12, size.width * 0.68,
        size.height * 0.15, size.width * 0.68, size.height * 0.15);
    path.cubicTo(size.width * 0.68, size.height * 0.15, size.width * 0.65,
        size.height * 0.14, size.width * 0.65, size.height * 0.14);
    path.cubicTo(size.width * 0.65, size.height * 0.14, size.width * 0.69,
        size.height * 0.11, size.width * 0.69, size.height * 0.11);
    path.cubicTo(size.width * 0.69, size.height * 0.11, size.width * 0.65,
        size.height * 0.11, size.width * 0.65, size.height * 0.11);
    path.cubicTo(size.width * 0.65, size.height * 0.11, size.width * 0.65,
        size.height * 0.09, size.width * 0.65, size.height * 0.09);
    path.cubicTo(size.width * 0.65, size.height * 0.09, size.width * 0.69,
        size.height * 0.1, size.width * 0.69, size.height * 0.1);
    path.cubicTo(size.width * 0.69, size.height * 0.1, size.width * 0.69,
        size.height * 0.08, size.width * 0.69, size.height * 0.08);
    path.cubicTo(size.width * 0.69, size.height * 0.08, size.width * 0.73,
        size.height * 0.08, size.width * 0.73, size.height * 0.08);
    path.cubicTo(size.width * 0.73, size.height * 0.08, size.width * 0.72,
        size.height * 0.1, size.width * 0.72, size.height * 0.1);
    path.cubicTo(size.width * 0.72, size.height * 0.1, size.width * 0.76,
        size.height * 0.09, size.width * 0.76, size.height * 0.09);
    path.cubicTo(size.width * 0.76, size.height * 0.09, size.width * 0.76,
        size.height * 0.11, size.width * 0.76, size.height * 0.11);
    path.cubicTo(size.width * 0.76, size.height * 0.11, size.width * 0.76,
        size.height * 0.11, size.width * 0.76, size.height * 0.11);
    canvas.drawPath(path, paint);

    // Path number 19

    paint.color = const Color(0xff59e869);
    path = Path();
    path.lineTo(size.width * 0.28, size.height * 0.12);
    path.cubicTo(size.width * 0.27, size.height * 0.12, size.width / 4,
        size.height * 0.12, size.width * 0.24, size.height * 0.13);
    path.cubicTo(size.width * 0.24, size.height * 0.13, size.width / 5,
        size.height * 0.13, size.width / 5, size.height * 0.13);
    path.cubicTo(size.width / 2, size.height * 0.14, size.width * 0.75,
        size.height * 0.3, size.width * 0.76, size.height * 0.51);
    path.cubicTo(size.width * 0.76, size.height * 0.51, size.width * 0.75,
        size.height * 0.51, size.width * 0.75, size.height * 0.51);
    path.cubicTo(size.width * 0.75, size.height * 0.51, size.width * 0.73,
        size.height * 0.51, size.width * 0.73, size.height * 0.51);
    path.cubicTo(size.width * 0.73, size.height * 0.51, size.width * 0.73,
        size.height * 0.49, size.width * 0.73, size.height * 0.49);
    path.cubicTo(size.width * 0.74, size.height * 0.49, size.width * 0.74,
        size.height * 0.49, size.width * 0.75, size.height * 0.49);
    path.cubicTo(size.width * 0.75, size.height * 0.49, size.width * 0.76,
        size.height * 0.49, size.width * 0.76, size.height * 0.49);
    path.cubicTo(size.width * 0.78, size.height * 0.55, size.width * 0.77,
        size.height * 0.61, size.width * 0.75, size.height * 0.67);
    path.cubicTo(size.width * 0.75, size.height * 0.67, size.width * 0.79,
        size.height * 0.67, size.width * 0.79, size.height * 0.67);
    path.cubicTo(size.width * 0.89, size.height * 0.79, size.width * 0.89,
        size.height * 0.94, size.width * 0.8, size.height * 1.07);
    path.cubicTo(size.width * 0.81, size.height * 1.07, size.width * 0.82,
        size.height * 1.07, size.width * 0.82, size.height * 1.06);
    path.cubicTo(size.width * 0.82, size.height * 1.06, size.width * 0.82,
        size.height * 1.09, size.width * 0.82, size.height * 1.09);
    path.cubicTo(size.width * 0.82, size.height * 1.09, size.width * 0.28,
        size.height * 0.12, size.width * 0.28, size.height * 0.12);
    canvas.drawPath(path, paint);

    // Path number 20

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width / 5, size.height * 0.1);
    path.cubicTo(size.width / 5, size.height * 0.1, size.width / 5,
        size.height * 0.1, size.width / 5, size.height * 0.09);
    path.cubicTo(size.width / 5, size.height * 0.09, size.width * 0.19,
        size.height * 0.09, size.width * 0.19, size.height * 0.09);
    path.cubicTo(size.width * 0.19, size.height * 0.09, size.width / 4,
        size.height * 0.09, size.width / 4, size.height * 0.09);
    path.cubicTo(size.width / 4, size.height * 0.09, size.width / 4,
        size.height * 0.09, size.width / 4, size.height * 0.09);
    path.cubicTo(size.width / 4, size.height * 0.1, size.width / 4,
        size.height * 0.1, size.width / 4, size.height * 0.1);
    path.cubicTo(size.width * 0.65, size.height * 0.18, size.width * 0.97,
        size.height * 0.39, size.width * 1.09, size.height * 0.66);
    path.cubicTo(size.width * 1.09, size.height * 0.66, size.width * 1.1,
        size.height * 0.66, size.width * 1.1, size.height * 0.66);
    path.cubicTo(size.width * 1.1, size.height * 0.66, size.width * 1.1,
        size.height * 0.7, size.width * 1.1, size.height * 0.7);
    path.cubicTo(size.width * 1.1, size.height * 0.7, size.width * 1.09,
        size.height * 0.7, size.width * 1.09, size.height * 0.7);
    path.cubicTo(size.width * 1.08, size.height * 0.7, size.width * 1.06,
        size.height * 0.7, size.width * 1.05, size.height * 0.7);
    path.cubicTo(size.width * 1.05, size.height * 0.7, size.width * 1.05,
        size.height * 0.7, size.width * 1.05, size.height * 0.7);
    path.cubicTo(size.width * 1.05, size.height * 0.71, size.width * 1.05,
        size.height * 0.71, size.width * 1.05, size.height * 0.71);
    path.cubicTo(size.width * 1.05, size.height * 0.71, size.width * 1.06,
        size.height * 0.72, size.width * 1.06, size.height * 0.72);
    path.cubicTo(size.width * 1.06, size.height * 0.72, size.width,
        size.height * 0.72, size.width, size.height * 0.72);
    path.cubicTo(size.width, size.height * 0.72, size.width, size.height * 0.72,
        size.width, size.height * 0.72);
    path.cubicTo(size.width, size.height * 0.72, size.width, size.height * 0.71,
        size.width, size.height * 0.71);
    path.cubicTo(size.width, size.height * 0.71, size.width, size.height * 0.71,
        size.width, size.height * 0.71);
    path.cubicTo(size.width, size.height * 0.71, size.width * 0.97,
        size.height * 0.71, size.width * 0.97, size.height * 0.71);
    path.cubicTo(size.width * 0.97, size.height * 0.71, size.width * 0.97,
        size.height * 0.68, size.width * 0.97, size.height * 0.68);
    path.cubicTo(size.width * 0.97, size.height * 0.68, size.width * 0.97,
        size.height * 0.68, size.width * 0.97, size.height * 0.68);
    path.cubicTo(size.width * 0.98, size.height * 0.68, size.width * 0.98,
        size.height * 0.68, size.width * 0.98, size.height * 0.68);
    path.cubicTo(size.width * 0.98, size.height * 0.68, size.width / 5,
        size.height * 0.1, size.width / 5, size.height * 0.1);
    path.lineTo(size.width * 0.28, size.height * 0.12);
    path.cubicTo(size.width * 0.27, size.height * 0.12, size.width / 4,
        size.height * 0.12, size.width * 0.24, size.height * 0.13);
    path.cubicTo(size.width * 0.24, size.height * 0.13, size.width / 5,
        size.height * 0.13, size.width / 5, size.height * 0.13);
    path.cubicTo(size.width / 2, size.height * 0.14, size.width * 0.75,
        size.height * 0.3, size.width * 0.76, size.height * 0.51);
    path.cubicTo(size.width * 0.76, size.height * 0.51, size.width * 0.75,
        size.height * 0.51, size.width * 0.75, size.height * 0.51);
    path.cubicTo(size.width * 0.75, size.height * 0.51, size.width * 0.73,
        size.height * 0.51, size.width * 0.73, size.height * 0.51);
    path.cubicTo(size.width * 0.73, size.height * 0.51, size.width * 0.73,
        size.height * 0.49, size.width * 0.73, size.height * 0.49);
    path.cubicTo(size.width * 0.74, size.height * 0.49, size.width * 0.74,
        size.height * 0.49, size.width * 0.75, size.height * 0.49);
    path.cubicTo(size.width * 0.75, size.height * 0.49, size.width * 0.76,
        size.height * 0.49, size.width * 0.76, size.height * 0.49);
    path.cubicTo(size.width * 0.78, size.height * 0.55, size.width * 0.77,
        size.height * 0.61, size.width * 0.75, size.height * 0.67);
    path.cubicTo(size.width * 0.75, size.height * 0.67, size.width * 0.79,
        size.height * 0.67, size.width * 0.79, size.height * 0.67);
    path.cubicTo(size.width * 0.89, size.height * 0.79, size.width * 0.89,
        size.height * 0.94, size.width * 0.8, size.height * 1.07);
    path.cubicTo(size.width * 0.81, size.height * 1.07, size.width * 0.82,
        size.height * 1.07, size.width * 0.82, size.height * 1.06);
    path.cubicTo(size.width * 0.82, size.height * 1.06, size.width * 0.82,
        size.height * 1.09, size.width * 0.82, size.height * 1.09);
    path.cubicTo(size.width * 0.82, size.height * 1.09, size.width * 0.28,
        size.height * 0.12, size.width * 0.28, size.height * 0.12);
    canvas.drawPath(path, paint);

    // Path number 21

    paint.color = const Color(0xffff39a0);
    path = Path();
    path.lineTo(size.width * 0.72, size.height * 0.38);
    path.cubicTo(size.width * 0.69, size.height * 0.38, size.width * 0.66,
        size.height * 0.38, size.width * 0.63, size.height * 0.38);
    path.cubicTo(size.width * 0.6, size.height * 0.38, size.width * 0.57,
        size.height * 0.38, size.width * 0.54, size.height * 0.38);
    path.cubicTo(size.width * 0.54, size.height * 0.38, size.width * 0.54,
        size.height * 0.35, size.width * 0.54, size.height * 0.35);
    path.cubicTo(size.width * 0.57, size.height * 0.35, size.width * 0.6,
        size.height * 0.35, size.width * 0.63, size.height * 0.35);
    path.cubicTo(size.width * 0.66, size.height * 0.35, size.width * 0.69,
        size.height * 0.35, size.width * 0.72, size.height * 0.35);
    path.cubicTo(size.width * 0.72, size.height * 0.35, size.width * 0.72,
        size.height * 0.38, size.width * 0.72, size.height * 0.38);
    path.cubicTo(size.width * 0.72, size.height * 0.38, size.width * 0.72,
        size.height * 0.38, size.width * 0.72, size.height * 0.38);
    path.lineTo(size.width * 0.72, size.height * 0.43);
    path.cubicTo(size.width * 0.66, size.height * 0.43, size.width * 0.6,
        size.height * 0.43, size.width * 0.54, size.height * 0.43);
    path.cubicTo(size.width * 0.54, size.height * 0.43, size.width * 0.54,
        size.height * 0.4, size.width * 0.54, size.height * 0.4);
    path.cubicTo(size.width * 0.57, size.height * 0.4, size.width * 0.6,
        size.height * 0.4, size.width * 0.63, size.height * 0.4);
    path.cubicTo(size.width * 0.66, size.height * 0.4, size.width * 0.69,
        size.height * 0.4, size.width * 0.72, size.height * 0.4);
    path.cubicTo(size.width * 0.72, size.height * 0.4, size.width * 0.72,
        size.height * 0.43, size.width * 0.72, size.height * 0.43);
    path.cubicTo(size.width * 0.72, size.height * 0.43, size.width * 0.72,
        size.height * 0.43, size.width * 0.72, size.height * 0.43);
    canvas.drawPath(path, paint);

    // Path number 22

    paint.color = const Color(0xfffff);
    path = Path();
    path.lineTo(size.width * 0.73, size.height * 0.44);
    path.cubicTo(size.width * 0.73, size.height * 0.44, size.width * 0.73,
        size.height * 0.39, size.width * 0.73, size.height * 0.39);
    path.cubicTo(size.width * 0.73, size.height * 0.39, size.width * 0.72,
        size.height * 0.39, size.width * 0.72, size.height * 0.39);
    path.cubicTo(size.width * 0.69, size.height * 0.39, size.width * 0.66,
        size.height * 0.39, size.width * 0.63, size.height * 0.39);
    path.cubicTo(size.width * 0.6, size.height * 0.39, size.width * 0.57,
        size.height * 0.39, size.width * 0.55, size.height * 0.39);
    path.cubicTo(size.width * 0.55, size.height * 0.39, size.width * 0.54,
        size.height * 0.39, size.width * 0.54, size.height * 0.39);
    path.cubicTo(size.width * 0.54, size.height * 0.39, size.width * 0.54,
        size.height * 0.44, size.width * 0.54, size.height * 0.44);
    path.cubicTo(size.width * 0.54, size.height * 0.44, size.width * 0.55,
        size.height * 0.44, size.width * 0.55, size.height * 0.44);
    path.cubicTo(size.width * 0.6, size.height * 0.44, size.width * 0.66,
        size.height * 0.44, size.width * 0.72, size.height * 0.44);
    path.cubicTo(size.width * 0.72, size.height * 0.44, size.width * 0.73,
        size.height * 0.44, size.width * 0.73, size.height * 0.44);
    path.cubicTo(size.width * 0.73, size.height * 0.44, size.width * 0.73,
        size.height * 0.44, size.width * 0.73, size.height * 0.44);
    path.lineTo(size.width * 0.72, size.height * 0.43);
    path.cubicTo(size.width * 0.66, size.height * 0.43, size.width * 0.6,
        size.height * 0.43, size.width * 0.54, size.height * 0.43);
    path.cubicTo(size.width * 0.54, size.height * 0.43, size.width * 0.54,
        size.height * 0.4, size.width * 0.54, size.height * 0.4);
    path.cubicTo(size.width * 0.57, size.height * 0.4, size.width * 0.6,
        size.height * 0.4, size.width * 0.63, size.height * 0.4);
    path.cubicTo(size.width * 0.66, size.height * 0.4, size.width * 0.69,
        size.height * 0.4, size.width * 0.72, size.height * 0.4);
    path.cubicTo(size.width * 0.72, size.height * 0.4, size.width * 0.72,
        size.height * 0.43, size.width * 0.72, size.height * 0.43);
    path.cubicTo(size.width * 0.72, size.height * 0.43, size.width * 0.72,
        size.height * 0.43, size.width * 0.72, size.height * 0.43);
    path.lineTo(size.width * 0.73, size.height * 0.39);
    path.cubicTo(size.width * 0.73, size.height * 0.39, size.width * 0.73,
        size.height * 0.34, size.width * 0.73, size.height * 0.34);
    path.cubicTo(size.width * 0.73, size.height * 0.34, size.width * 0.72,
        size.height * 0.34, size.width * 0.72, size.height * 0.34);
    path.cubicTo(size.width * 0.69, size.height * 0.34, size.width * 0.66,
        size.height * 0.34, size.width * 0.63, size.height * 0.34);
    path.cubicTo(size.width * 0.63, size.height * 0.34, size.width * 0.62,
        size.height * 0.34, size.width * 0.62, size.height * 0.34);
    path.cubicTo(size.width * 0.62, size.height * 0.34, size.width * 0.62,
        size.height * 0.39, size.width * 0.62, size.height * 0.39);
    path.cubicTo(size.width * 0.62, size.height * 0.39, size.width * 0.63,
        size.height * 0.39, size.width * 0.63, size.height * 0.39);
    path.cubicTo(size.width * 0.66, size.height * 0.39, size.width * 0.69,
        size.height * 0.39, size.width * 0.72, size.height * 0.39);
    path.cubicTo(size.width * 0.75, size.height * 0.39, size.width * 0.77,
        size.height * 0.39, size.width * 0.8, size.height * 0.39);
    path.cubicTo(size.width * 0.8, size.height * 0.39, size.width * 0.81,
        size.height * 0.39, size.width * 0.81, size.height * 0.39);
    path.cubicTo(size.width * 0.81, size.height * 0.39, size.width * 0.73,
        size.height * 0.39, size.width * 0.73, size.height * 0.39);
    path.lineTo(size.width * 0.72, size.height * 0.38);
    path.cubicTo(size.width * 0.69, size.height * 0.38, size.width * 0.66,
        size.height * 0.38, size.width * 0.63, size.height * 0.38);
    path.cubicTo(size.width * 0.6, size.height * 0.38, size.width * 0.57,
        size.height * 0.38, size.width * 0.54, size.height * 0.38);
    path.cubicTo(size.width * 0.54, size.height * 0.38, size.width * 0.54,
        size.height * 0.35, size.width * 0.54, size.height * 0.35);
    path.cubicTo(size.width * 0.57, size.height * 0.35, size.width * 0.6,
        size.height * 0.35, size.width * 0.63, size.height * 0.35);
    path.cubicTo(size.width * 0.66, size.height * 0.35, size.width * 0.69,
        size.height * 0.35, size.width * 0.72, size.height * 0.35);
    path.cubicTo(size.width * 0.72, size.height * 0.35, size.width * 0.72,
        size.height * 0.38, size.width * 0.72, size.height * 0.38);
    path.cubicTo(size.width * 0.72, size.height * 0.38, size.width * 0.72,
        size.height * 0.38, size.width * 0.72, size.height * 0.38);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
