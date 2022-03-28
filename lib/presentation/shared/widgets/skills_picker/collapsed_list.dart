import 'package:diplom_proj/presentation/shared/widgets/divider/divider.dart';
import 'package:diplom_proj/src/symptoms/editable_skills_model/editable_skill_model.dart';
import 'package:diplom_proj/src/symptoms/skill/skill.dart';
import 'package:flutter/material.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/mixins/collapsed_list_mixin.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/mixins/is_checked_mixin.dart';

import 'package:diplom_proj/presentation/shared/scroll_component/scroll_clean_behavior.dart';
import 'package:diplom_proj/presentation/shared/widget_interfaces/animation_state.dart';

import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/collapsed_list_item.dart';
import 'package:diplom_proj/presentation/shared/widgets/skills_picker/list_header.dart';

class CollapsedList extends StatefulWidget {
  const CollapsedList({
    required this.skillsHeader,
    required this.skills,
    required this.checkedSkills,
    required this.onMark,
    required this.onUnmark,
    this.isExpanded = false,
    this.isSearch = false,
    Key? key,
  }) : super(key: key);
  final String skillsHeader;
  final List<Skill> skills;
  final List<int> checkedSkills;
  final bool isExpanded;
  final bool isSearch;
  final Function(int) onMark;
  final Function(int) onUnmark;

  @override
  _CollapsedListState createState() => _CollapsedListState();
}

class _CollapsedListState extends AnimationState<CollapsedList> with IsChecked, CollapsedListMixin {
  @override
  void didUpdateWidget(covariant CollapsedList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSearch) {
      isExpanded = true;
    }

    if (oldWidget.isSearch != widget.isSearch) {
      createAnimation();

      if (widget.isSearch == true) {
        animationController.forward();
      } else {
        animationController.reverse();
      }

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NonAnimatedInkWell(
          onTap: expandList,
          child: ListHeader(
            headerLabel: widget.skillsHeader,
            isExpand: isExpanded,
          ),
        ),
        ClipRRect(
          child: SizedBox(
            height: widget.isSearch && isExpanded ? 45.0 * widget.skills.length : sizeAnimation.value,
            child: ScrollConfiguration(
              behavior: ScrollCleanBehavior(),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (ctx, index) => LightDivider(),
                itemCount: widget.skills.length,
                itemBuilder: (ctx, index) {
                  final skill = widget.skills[index];
                  return CollapsedListItem(
                    onChange: (isMarked) {
                      onChanged(
                        isChecked: isMarked,
                        id: skill.id!,
                      );
                    },
                    skillModel: EditableSkillModel(
                      isChecked: isChecked(skill, widget.checkedSkills),
                      skill: skill,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        if (isExpanded) LightDivider(),
      ],
    );
  }
}
