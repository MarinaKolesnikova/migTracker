import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:diplom_proj/resources/paths/svg_paths.dart';
import 'package:diplom_proj/resources/resources.dart';

import 'package:diplom_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:provider/src/provider.dart';

class LightCheckBox extends StatefulWidget {
  const LightCheckBox({
    required this.isChecked,
    required this.onChange,
    this.labelWidget,
    Key? key,
  }) : super(key: key);

  final bool isChecked;
  final Function(bool) onChange;
  final Widget? labelWidget;

  @override
  _LightCheckBoxState createState() => _LightCheckBoxState();
}

class _LightCheckBoxState extends State<LightCheckBox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  void didUpdateWidget(covariant LightCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isChecked != widget.isChecked) {
      isChecked = widget.isChecked;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: NonAnimatedInkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              height: 24.0,
              width: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 2.0),
                    color: LightColors.shadowColor.withOpacity(0.25),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: getImage(
                isChecked: isChecked,
              ),
            ),
            widget.labelWidget ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  void onTap() {
    isChecked = !isChecked;
    setState(() {});
    widget.onChange(isChecked);
  }

  Widget getImage({required bool isChecked}) {
    if (isChecked) {
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: SvgPicture.asset(
          SvgPathPicker.checkMark,
          height: 18.0,
          color: LightColors.text,
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox.shrink(),
    );
  }
}
