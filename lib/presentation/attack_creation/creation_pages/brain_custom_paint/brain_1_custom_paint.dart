import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_custom_paint.dart';
import 'package:flutter/widgets.dart';

class Brain1CustomPaint extends BrainCustomPaint {
  Brain1CustomPaint(this.color) : super(color);
  @override
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    final Path path = Path();

    // Path number 1

    paint.color = color;

    path.lineTo(size.width * 0.04, size.height * 0.36);
    path.cubicTo(0, size.height * 0.43, -0.05, size.height * 0.56, size.width * 0.11, size.height * 0.71);
    path.cubicTo(size.width * 0.26, size.height * 0.85, size.width * 0.63, size.height * 0.94, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width * 0.95, size.height * 0.34, size.width * 0.95, size.height * 0.34);
    path.cubicTo(size.width * 0.95, size.height * 0.34, size.width * 0.93, 0, size.width * 0.93, 0);
    path.cubicTo(size.width * 0.55, size.height * 0.07, size.width * 0.14, size.height / 5, size.width * 0.04, size.height * 0.36);
    path.cubicTo(size.width * 0.04, size.height * 0.36, size.width * 0.04, size.height * 0.36, size.width * 0.04, size.height * 0.36);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
