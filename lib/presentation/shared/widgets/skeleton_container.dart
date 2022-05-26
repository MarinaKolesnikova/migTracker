import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';

import 'package:skeleton_text/skeleton_text.dart';

class SkeletoneContainer extends StatelessWidget {
  const SkeletoneContainer({
    this.borderRadius,
    this.height = double.infinity,
    this.width = double.infinity,
    Key? key,
  }) : super(key: key);

  final double height;
  final double width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: LightColors.skelletonColors,
          borderRadius: borderRadius ?? BorderRadius.circular(3.0),
        ),
      ),
    );
  }
}
