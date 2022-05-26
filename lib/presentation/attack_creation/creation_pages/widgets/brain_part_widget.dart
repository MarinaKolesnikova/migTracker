import 'package:diplom_proj/presentation/attack_creation/creation_pages/brain_custom_paint/brain_custom_paint.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:flutter/material.dart';

class BrainPartWidget extends StatefulWidget {
  const BrainPartWidget({
    required this.painter,
    required this.top,
    required this.left,
    required this.onTap,
    required this.size,
    Key? key,
  }) : super(key: key);
  final BrainCustomPaint painter;
  final double top;
  final double left;
  final VoidCallback onTap;
  final Size size;
  @override
  State<BrainPartWidget> createState() => _BrainPartWidgetState();
}

class _BrainPartWidgetState extends State<BrainPartWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left + 5.0,
      child: NonAnimatedInkWell(
        onTap: widget.onTap,
        child: CustomPaint(
          painter: widget.painter,
          size: widget.size / 1.4,
        ),
      ),
    );
  }
}
