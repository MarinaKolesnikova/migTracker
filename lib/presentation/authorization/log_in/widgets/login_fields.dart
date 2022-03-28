import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:diplom_proj/presentation/shared/widgets/text_field/light_text_field_builder.dart';
import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:diplom_proj/resources/light_text_styles/light_text_styles.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    required this.loginController,
    required this.passwordController,
    required this.onChange,
    required this.isError,
    Key? key,
  }) : super(key: key);
  final TextEditingController loginController;
  final TextEditingController passwordController;
  final VoidCallback onChange;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final AuthDictionary dict = dictionaryManager.getSelectedData.auth;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: LightTextFieldBuilder.login(
            label: dict.email,
            controller: loginController,
            labelStyle: LightTextStyles.nunitoS16W400(color: LightColors.text),
            textStyle: LightTextStyles.nunitoS16W400(color: LightColors.text, height: 1.5),
            filledColor: isError ? LightColors.errorColor : LightColors.text,
            onChange: (_) {
              onChange();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LightTextFieldBuilder.password(
            controller: passwordController,
            labelStyle: LightTextStyles.nunitoS16W400(color: LightColors.text),
            textStyle: LightTextStyles.nunitoS16W400(color: LightColors.text, height: 1.5),
            filledColor: isError ? LightColors.errorColor : LightColors.text,
            onChange: (_) {
              onChange();
            },
          ),
        ),
      ],
    );
  }
}
