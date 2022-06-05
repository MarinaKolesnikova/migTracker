import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class SettingsIconLabel extends StatelessWidget {
  const SettingsIconLabel({
    required this.iconPath,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String iconPath;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: NonAnimatedInkWell(
          onTap: onTap,
          child: Text(
            text,
            style: LightTextStyles.poppinsW700(
              color: LightColors.text,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
