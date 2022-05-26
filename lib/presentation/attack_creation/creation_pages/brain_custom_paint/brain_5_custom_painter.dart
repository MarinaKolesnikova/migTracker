import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_custom_paint.dart';
import 'package:flutter/material.dart';

class Brain5CustomPaint extends BrainCustomPaint {
  Brain5CustomPaint(this.color) : super(color);
  @override
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    final Path path = Path();

    // Path number 1

    paint.color = color;

    path.lineTo(size.width * 0.9, size.height * 0.57);
    path.cubicTo(size.width, size.height * 0.36, size.width, size.height * 0.23, size.width, 0);
    path.cubicTo(size.width, 0, 0, size.height * 0.15, 0, size.height * 0.15);
    path.cubicTo(0, size.height * 0.15, size.width * 0.16, size.height * 0.59, size.width * 0.16, size.height * 0.59);
    path.cubicTo(size.width * 0.17, size.height * 0.59, size.width * 0.28, size.height * 0.65, size.width * 0.3, size.height * 0.67);
    path.cubicTo(size.width / 3, size.height * 0.69, size.width * 0.61, size.height, size.width * 0.61, size.height);
    path.cubicTo(size.width * 0.61, size.height, size.width * 0.82, size.height * 0.76, size.width * 0.9, size.height * 0.57);
    path.cubicTo(size.width * 0.9, size.height * 0.57, size.width * 0.9, size.height * 0.57, size.width * 0.9, size.height * 0.57);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
