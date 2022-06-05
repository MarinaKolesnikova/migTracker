import 'package:diplom_proj/presentation/main/mixins/charts_panel_mixin.dart';
import 'package:diplom_proj/presentation/shared/mixins/page_view_mixin.dart';
import 'package:flutter/material.dart';

class ChartsPanel extends StatefulWidget {
  const ChartsPanel({Key? key}) : super(key: key);

  @override
  State<ChartsPanel> createState() => _ChartsPanelState();
}

class _ChartsPanelState extends State<ChartsPanel> with ChartPanelMixin, PagedViewMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0, top: 40.0),
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
        bottom: 5.0,
      ),
      decoration: getDecoration(),
      height: 220.0,
      child: Stack(
        children: <Widget>[
          buildPageView(
            charts,
            controller,
          ),
          buildCircleIndicator(charts.length),
        ],
      ),
    );
  }
}
