import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_custom_paint.dart';
import 'package:flutter/material.dart';

class Brain4CustomPaint extends BrainCustomPaint {
  Brain4CustomPaint(this.color) : super(color);
  @override
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    final Path path = Path();

    // Path number 1

    paint.color = color;

    path.lineTo(size.width, size.height * 0.82);
    path.cubicTo(size.width * 0.98, size.height * 0.53, size.width * 0.9, size.height * 0.32, size.width * 0.87, size.height / 4);
    path.cubicTo(size.width * 0.84, size.height * 0.18, size.width * 0.78, size.height * 0.07, size.width * 0.72, 0);
    path.cubicTo(size.width * 0.72, 0, 0, size.height / 4, 0, size.height / 4);
    path.cubicTo(0, size.height / 4, size.width * 0.17, size.height, size.width * 0.17, size.height);
    path.cubicTo(size.width * 0.17, size.height, size.width, size.height * 0.82, size.width, size.height * 0.82);
    path.cubicTo(size.width, size.height * 0.82, size.width, size.height * 0.82, size.width, size.height * 0.82);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
