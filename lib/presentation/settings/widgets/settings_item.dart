import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    required this.label,
    required this.child,
    Key? key,
  }) : super(key: key);
  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              label,
              style: LightTextStyles.poppinsS14W400(color: LightColors.text.withOpacity(0.8)),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: child,
          ),
        ],
      ),
    );
  }
}
