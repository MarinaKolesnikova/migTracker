import 'package:diplom_proj/presentation/shared/widgets/text_field/light_text_field_builder.dart';
import 'package:diplom_proj/resources/dictionary/data/validation_dictionary/validation_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class TextEditingField extends StatefulWidget {
  const TextEditingField({
    required this.labelText,
    required this.textController,
    required this.onChange,
    this.validationRules,
    this.isActive = true,
    this.needsValidate = true,
    Key? key,
  }) : super(key: key);
  final String labelText;
  final TextEditingController textController;
  final bool isActive;
  final bool needsValidate;
  final VoidCallback onChange;
  final List<String? Function(String)>? validationRules;

  @override
  State<TextEditingField> createState() => _TextEditingFieldState();
}

class _TextEditingFieldState extends State<TextEditingField> {
  @override
  Widget build(BuildContext context) {
    final bool isValid = widget.needsValidate ? validationText() == null : widget.needsValidate;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Focus(
            child: LightTextFieldBuilder.nonSpecific(
              textStyle: getTextStyle(isActive: widget.isActive),
              labelStyle: getTextStyle(),
              label: widget.labelText,
              maxLines: 1,
              controller: widget.textController,
              fieldPadding: EdgeInsets.zero,
              filledColor: isValid ? LightColors.text : LightColors.errorColor,
              onChange: (_) => widget.onChange(),
            ),
          ),
          errorText(isValid: isValid),
        ],
      ),
    );
  }

  String? validationText() {
    final ValidationDictionary dict = dictionaryManager.getSelectedData.validation;
    final text = widget.textController.text.trim();
    if (text.isEmpty) {
      return dict.requiredField;
    }
    String? validationMessage;
    if (widget.validationRules != null) {
      for (String? Function(String) func in widget.validationRules!) {
        validationMessage = func.call(text) ?? validationMessage;
      }
    }
    return validationMessage;
  }

  Widget errorText({required bool isValid}) {
    final errorMess = validationText();

    if (errorMess != null) {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: 8.0,
          top: 4.0,
        ),
        child: Text(
          errorMess,
          style: LightTextStyles.poppinsS12W400(color: LightColors.errorColor),
        ),
      );
    }
    return SizedBox.shrink();
  }

  TextStyle getTextStyle({bool? isActive}) {
    return LightTextStyles.poppinsW400(
      color: isActive != false ? LightColors.text : LightColors.semiGrey,
      fontSize: 14.0,
    );
  }
}
