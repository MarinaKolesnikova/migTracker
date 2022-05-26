import 'package:diplom_proj/resources/paths/png_paths.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Image.asset(
          PngPathPicker.logo,
          height: 50.0,
          width: 50.0,
        ),
      ),
    );
  }
}
