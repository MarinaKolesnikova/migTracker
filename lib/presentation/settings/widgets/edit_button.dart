import 'package:diplom_proj/presentation/shared/mixins/logout.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: () => Logout.logoutAction(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: SvgPicture.asset(
          SvgPathPicker.exit,
          color: LightColors.white,
        ),
      ),
    );
  }
}
