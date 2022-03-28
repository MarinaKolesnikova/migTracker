import 'package:diplom_proj/presentation/authorization/sign_up/widgets/sign_up_fields_list.dart';
import 'package:diplom_proj/resources/dictionary/data/validation_dictionary/validation_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

enum PasswordErrorEnum {
  currentField,
  newField,
  none,
}
mixin AuthFieldsMixin<T extends SignUpFieldsList> on State<T> {
  late final TextEditingController currentPassController;
  late final TextEditingController newPassController;
  late final TextEditingController eqNewPassController;
  late bool isEmailValid;
  late bool newPassValid;
  late bool eqPassValid;
  late PasswordErrorEnum passwordEnum;
  String? errorText;
  @override
  void initState() {
    super.initState();
    passwordEnum = PasswordErrorEnum.none;
    currentPassController = TextEditingController();
    newPassController = TextEditingController();
    eqNewPassController = TextEditingController();
    isEmailValid = true;
    newPassValid = false;
    eqPassValid = false;
  }

  final ValidationDictionary validationDictionary = dictionaryManager.getSelectedData.validation;

  void onError({
    required PasswordErrorEnum passwordErrorEnum,
    String? text,
  }) {
    setState(() {
      errorText = text;
      passwordEnum = passwordErrorEnum;
    });
  }

  void isButtonActive({
    required bool newValid,
    required bool eqValid,
  }) {
    if ((newValid || eqValid) && newPassController.text == eqNewPassController.text) {
      newPassValid = true;
      eqPassValid = true;
    } else {
      newPassValid = newValid;
      eqPassValid = eqValid;
    }

    setState(() {});
  }

  String? Function(String? value) validator(TextEditingController c1) {
    return (text) {
      final text2 = c1.text;
      if (text != null && text.isNotEmpty && text2.isNotEmpty) {
        final valid = text2 == text;

        if (!valid) return validationDictionary.passwordsNotEqual;
      }
      return null;
    };
  }

  void removeErrorFromBack() {
    errorText = null;
    passwordEnum = PasswordErrorEnum.none;
  }

  void newPassIsValid({required bool isValid}) {
    removeErrorFromBack();
    isButtonActive(
      eqValid: eqPassValid,
      newValid: isValid,
    );
  }

  void eqPassIsValid({required bool isValid}) {
    removeErrorFromBack();

    isButtonActive(
      eqValid: isValid,
      newValid: newPassValid,
    );
  }
}
