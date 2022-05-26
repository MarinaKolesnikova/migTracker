import 'package:diplom_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class CurrentAttack extends StatelessWidget {
  const CurrentAttack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      margin: const EdgeInsets.all(20.0),
      height: 200.0,
      decoration: decoration,
      child: Column(
        children: [
          NonAnimatedInkWell(
            onTap: () {},
            child: Container(
              height: 40.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              decoration: whiteBorder,
              child: Text(
                dict.edit,
                style: LightTextStyles.poppinsS16W400(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              dict.duration,
              style: LightTextStyles.poppinsW700(
                color: LightColors.text,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: LightOutlineButton(
              text: dict.stop,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration get whiteBorder {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        color: LightColors.text,
      ),
    );
  }

  BoxDecoration get decoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(color: LightColors.text),
      color: LightColors.mainItemsColor,
    );
  }
}
