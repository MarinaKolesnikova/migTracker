import 'package:flutter/material.dart';

abstract class BrainCustomPaint extends CustomPainter {
  BrainCustomPaint(this.color);
  final Color color;
}
