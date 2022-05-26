import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class TodayWidget extends StatelessWidget {
  const TodayWidget({
    required this.child,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final CalendarDictionary dict = dictionaryManager.getSelectedData.calendar;

    return Stack(
      children: [
        child,
        Positioned(
          right: 50.0,
          top: 20.0,
          child: NonAnimatedInkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: LightColors.linkBlue),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  dict.today,
                  style: LightTextStyles.poppinsS12W400(color: LightColors.linkBlue),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
