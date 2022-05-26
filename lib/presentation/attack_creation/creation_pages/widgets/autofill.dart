import 'package:diplom_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:diplom_proj/presentation/shared/widgets/mig_icon/mig_icon.dart';
import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class Autofill extends StatelessWidget {
  const Autofill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0).add(const EdgeInsets.only(bottom: 10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LightOutlineButton(
              onTap: () {},
              text: dict.autofill,
              heigth: 30.0,
              color: LightColors.lightPurpleColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: MigIcon(
              svgPath: SvgPathPicker.autofill,
              size: 30.0,
            ),
          )
        ],
      ),
    );
  }
}
