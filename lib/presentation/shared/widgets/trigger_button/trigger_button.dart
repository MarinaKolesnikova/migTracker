import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class TriggerButton extends StatefulWidget {
  const TriggerButton({
    required this.isSelected,
    required this.callback,
    required this.label,
    Key? key,
  }) : super(key: key);
  final bool isSelected;
  final void Function(bool isSelected) callback;
  final String label;

  @override
  State<TriggerButton> createState() => _TriggerButtonState();
}

class _TriggerButtonState extends State<TriggerButton> {
  late bool isSelected;
  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.callback(isSelected);
      },
      child: Container(
        decoration: decoration,
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
        height: 55.0,
        child: Center(
          child: Text(
            widget.label,
            textAlign: TextAlign.center,
            style: LightTextStyles.poppinsS15W500Lsp02(),
          ),
        ),
      ),
    );
  }

  BoxDecoration get decoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: isSelected ? LightColors.chipColor.withOpacity(0.7) : LightColors.chipColor.withOpacity(0.2),
    );
  }
}
