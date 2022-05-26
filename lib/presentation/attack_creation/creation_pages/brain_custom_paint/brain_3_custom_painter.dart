import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_custom_paint.dart';
import 'package:flutter/material.dart';

class Brain3CustomPaint extends BrainCustomPaint {
  Brain3CustomPaint(this.color) : super(color);
  @override
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    final Path path = Path();

    // Path number 1

    paint.color = color;

    path.lineTo(size.width * 0.01, size.height * 0.79);
    path.cubicTo(size.width * 0.13, size.height * 0.85, size.width * 0.22, size.height * 0.87, size.width * 0.47, size.height * 0.9);
    path.cubicTo(size.width * 0.72, size.height * 0.93, size.width * 0.91, size.height * 0.95, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width * 0.88, size.height * 0.59, size.width * 0.88, size.height * 0.59);
    path.cubicTo(size.width * 0.88, size.height * 0.59, size.width * 0.72, 0, size.width * 0.72, 0);
    path.cubicTo(size.width * 0.72, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width * 0.01, size.height * 0.79, size.width * 0.01, size.height * 0.79);
    path.cubicTo(size.width * 0.01, size.height * 0.79, size.width * 0.01, size.height * 0.79, size.width * 0.01, size.height * 0.79);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
