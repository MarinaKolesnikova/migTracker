import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class SettingsBlock extends StatelessWidget {
  const SettingsBlock({
    required this.blocLabel,
    required this.child,
    Key? key,
  }) : super(key: key);
  final String blocLabel;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Color frameColor = LightColors.text.withOpacity(0.8);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            children: [
              Container(
                height: 1.0,
                width: 70.0,
                color: frameColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Localization', //  blocLabel,
                  style: LightTextStyles.poppinsS14W400(color: frameColor),
                ),
              ),
              Expanded(
                child: Container(
                  height: 1.0,
                  color: frameColor,
                ),
              ),
            ],
          ),
        ),
        child,
      ],
    );
  }
}
