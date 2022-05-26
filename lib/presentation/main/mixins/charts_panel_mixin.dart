import 'package:diplom_proj/presentation/main/widgets/chart_currency.dart';
import 'package:diplom_proj/presentation/main/widgets/charts_panel.dart';
import 'package:diplom_proj/presentation/main/widgets/pie_chart_symptoms.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

mixin ChartPanelMixin<T extends ChartsPanel> on State<T> {
  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final charts = [
    PieChartSymptoms(
      attackItems: [],
    ),
    ChartCurrency(),
  ];

  BoxDecoration getDecoration() {
    return BoxDecoration(
      color: LightColors.mainItemsColor,
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: [
        BoxShadow(
          color: LightColors.shadowColor,
          blurRadius: 10.0,
          spreadRadius: 5.0,
        ),
      ],
    );
  }
}
