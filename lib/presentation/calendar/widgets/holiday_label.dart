import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class HolidayLabel extends StatelessWidget {
  const HolidayLabel({required this.text, Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: LightTextStyles.poppinsS15W500Lsp02(
          color: LightColors.text.withOpacity(0.8)
        ),
      ),
    );
  }
}
