import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_custom_paint.dart';
import 'package:flutter/material.dart';

class Brain2CustomPaint extends BrainCustomPaint {
  Brain2CustomPaint(this.color) : super(color);
  @override
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    final Path path = Path();

    // Path number 1

    paint.color = color;

    path.lineTo(0, size.height * 0.28);
    path.cubicTo(0, size.height * 0.28, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, size.width * 0.52, size.height, size.width * 0.52, size.height);
    path.cubicTo(size.width * 0.52, size.height, size.width, size.height * 0.61, size.width, size.height * 0.61);
    path.cubicTo(size.width * 0.95, size.height * 0.49, size.width * 0.83, size.height * 0.27, size.width * 0.76, size.height / 5);
    path.cubicTo(size.width * 0.71, size.height * 0.12, size.width * 0.65, size.height * 0.07, size.width * 0.57, size.height * 0.03);
    path.cubicTo(size.width * 0.49, -0.02, size.width * 0.34, 0, size.width * 0.28, size.height * 0.03);
    path.cubicTo(size.width * 0.17, size.height * 0.07, size.width * 0.1, size.height * 0.15, 0, size.height * 0.28);
    path.cubicTo(0, size.height * 0.28, 0, size.height * 0.28, 0, size.height * 0.28);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
