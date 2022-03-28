import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/symptoms/skill/skill.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightChip extends StatelessWidget {
  const LightChip({
    required this.skill,
    this.isEditable = false,
    this.onCancelled,
    Key? key,
  }) : super(key: key);
  final Skill skill;
  final bool isEditable;
  final Function(Skill value)? onCancelled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      decoration: getDecoration(),
      padding: EdgeInsets.only(
        left: 15.0,
        right: isEditable ? 2.0 : 15.0,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              skill.name!,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: LightTextStyles.robotoS16W400(
                color: LightColors.accentColor,
                letterSpacing: 0.5,
              ),
            ),
            if (isEditable)
              NonAnimatedInkWell(
                onTap: () {
                  onCancelled?.call(skill);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        SvgPathPicker.cross,
                        color: LightColors.text,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Decoration getDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: LightColors.chipColor,
    );
  }
}
