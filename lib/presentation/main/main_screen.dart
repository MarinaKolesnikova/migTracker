import 'package:diplom_proj/presentation/shared/widgets/prefered_size_container.dart';
import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:diplom_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout.withFocusLayout(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 160.0,
            bottom: PreferedSizeContainer(
              isShadow: true,
              height: 20.0,
              color: LightColors.lightUndercover,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: ColoredBox(
                color: LightColors.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20.0,
                  ),
                  child: Container(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
