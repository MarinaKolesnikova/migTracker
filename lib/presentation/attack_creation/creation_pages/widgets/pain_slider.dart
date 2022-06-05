import 'package:diplom_proj/resources/colors/light_colors.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/attack/domain/events/set_attack_parameters_event.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart' as chart;
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class PainSlider extends StatefulWidget {
  PainSlider({
    required this.value,
    Key? key,
  }) : super(key: key);
  final int value;
  @override
  State<PainSlider> createState() => _PainSliderState();
}

class _PainSliderState extends State<PainSlider> {
  @override
  Widget build(BuildContext context) {
    final SfRangeValues? values = SfRangeValues(widget.value - 1, widget.value);
    final List<int> painLevel = [1, 2, 3, 4, 5];
    return Center(
      child: SfRangeSelectorTheme(
        data: SfRangeSelectorThemeData(
          activeTrackHeight: 4.0,
          inactiveTrackHeight: 4.0,
          thumbRadius: 10.0,
          thumbColor: LightColors.trackColor,
          inactiveTrackColor: LightColors.primaryColor,
          overlayColor: Colors.transparent,
          activeTrackColor: LightColors.trackColor,
        ),
        child: SfRangeSelector(
          min: 1,
          max: 5,
          initialValues: values,
          interval: 1,
          stepSize: 1,
          labelFormatterCallback: (_, s) => '',
          showLabels: true,
          inactiveColor: LightColors.mainItemsColor.withOpacity(0.5),
          enableIntervalSelection: true,
          onChangeEnd: (val) {
            context.read<AttackBloc>().add(SetAttackParametersEvent(painLevel: int.parse(val.end)));
          },
          child: SizedBox(
            height: 50,
            child: chart.SfCartesianChart(
              margin: const EdgeInsets.all(0),
              plotAreaBorderWidth: 0,
              backgroundColor: Colors.transparent,
              primaryXAxis: chart.NumericAxis(
                minimum: 1,
                maximum: 5,
                isVisible: false,
              ),
              primaryYAxis: chart.NumericAxis(isVisible: false, maximum: 4),
              series: <chart.SplineAreaSeries<int, int>>[
                chart.SplineAreaSeries<int, int>(
                  dataSource: painLevel,
                  borderColor: Colors.transparent,
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.red,
                    ],
                  ),
                  xValueMapper: (int level, int index) => painLevel[index],
                  yValueMapper: (int level, int index) => painLevel[index] / 1.3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
