import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartCurrency extends StatelessWidget {
  const ChartCurrency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PieChartSectionData> sections = [
      PieChartSectionData(
        value: 40.0,
        color: LightColors.chartPalette[0],
      ),
      PieChartSectionData(
        value: 30.0,
        color: LightColors.chartPalette[1],
      ),
      PieChartSectionData(
        value: 20.0,
        color: LightColors.chartPalette[2],
      ),
    ];
    return Container(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: PieChart(
        PieChartData(
          sections: sections,
        ),
        swapAnimationDuration: Duration(milliseconds: 100), // Optional
      ),
    );
  }
}
