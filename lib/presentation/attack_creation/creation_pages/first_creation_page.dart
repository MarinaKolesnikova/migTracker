import 'package:diplom_proj/presentation/attack_creation/creation_pages/mixins/decoration_mixin.dart';
import 'package:diplom_proj/presentation/attack_creation/creation_pages/widgets/pickers.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/custom_picker.dart';

import 'package:diplom_proj/resources/dictionary/all.dart';
import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/light_text_styles/light_text_styles.dart';
import 'package:diplom_proj/resources/paths/png_paths.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/set_unset_treatments_event.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';
import 'package:flutter/material.dart';

class FirstCreationPage extends StatefulWidget {
  const FirstCreationPage({required this.pickedGroups, Key? key}) : super(key: key);
  final List<PickingGroupAbstract> pickedGroups;

  @override
  State<FirstCreationPage> createState() => _FirstCreationPageState();
}

class _FirstCreationPageState extends State<FirstCreationPage> with PickerMixin {
  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;
    final state = context.read<AttackBloc>().state;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                dict.attackNote,
                style: LightTextStyles.poppinsS18W500(),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  PngPathPicker.timesOfDay,
                  width: 100.0,
                ),
                Expanded(child: Pickers()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                dict.treatments,
                style: LightTextStyles.poppinsS16W400(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: decoration(),
                  child: CustomPicker(
                    searchFieldName: 'treatments',
                    pickedGroups: widget.pickedGroups,
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
  }

  void onMark(int index) {
    context.read<AttackBloc>().add(
          SetUnsetTreatmentsEvent(treatmentIndex: index),
        );
  }

  void onUnmark(int index) {
    context.read<AttackBloc>().add(
          SetUnsetTreatmentsEvent(treatmentIndex: index),
        );
  }
}
