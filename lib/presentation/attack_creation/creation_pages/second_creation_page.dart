import 'package:diplom_proj/presentation/attack_creation/creation_pages/mixins/decoration_mixin.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/pain_localization.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/pain_slider.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/custom_picker.dart';
import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/set_unset_symptoms_event.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondCreationPage extends StatefulWidget {
  const SecondCreationPage({Key? key}) : super(key: key);

  @override
  State<SecondCreationPage> createState() => _SecondCreationPageState();
}

class _SecondCreationPageState extends State<SecondCreationPage> with PickerMixin {
  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;
    final state = context.read<AttackBloc>().state;

    return BlocBuilder<AttackBloc, AttackState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    dict.location,
                    style: LightTextStyles.poppinsS16W400(),
                  ),
                ),
                SizedBox(
                  height: 200.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dict.tapToChoose,
                              style: LightTextStyles.poppinsS14W400(color: LightColors.text),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: PainLocalization(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Text(
                    dict.painLevel,
                    style: LightTextStyles.poppinsS16W400(),
                  ),
                ),
                PainSlider(value: state.currentModel?.painLevel ?? 3),
                Text(
                  dict.symptoms,
                  style: LightTextStyles.poppinsS16W400(),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: decoration(),
                      child: CustomPicker(
                        searchFieldName: 'symptoms',
                        pickedGroups: state.symptomsGroup,
                        checkedSymtoms: state.currentModel?.toDTO().symptoms ?? [],
                        searchController: searchController,
                        scrollController: scrollController,
                        onMark: onMark,
                        onUnmark: onUnmark,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void onMark(int index) {
    context.read<AttackBloc>().add(
          SetUnsetSymptomsEvent(symptomIndex: index),
        );
  }

  void onUnmark(int index) {
    context.read<AttackBloc>().add(
          SetUnsetSymptomsEvent(symptomIndex: index),
        );
  }
}
