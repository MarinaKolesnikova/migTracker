import 'package:diplom_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:diplom_proj/presentation/shared/widgets/mig_icon/mig_icon.dart';
import 'package:diplom_proj/resources/dictionary/data/predictions_dictionary/predictions_dictictionary.dart';
import 'package:diplom_proj/resources/paths/png_paths.dart';
import 'package:diplom_proj/resources/resources.dart';

import 'package:diplom_proj/src/predictions/entities/prediction_weather/prediction_weather.dart';
import 'package:flutter/material.dart';

class PredictionsItem extends StatelessWidget {
  const PredictionsItem({
    required this.predictionWeather,
    Key? key,
  }) : super(key: key);
  final PredictionWeather predictionWeather;

  @override
  Widget build(BuildContext context) {
    return getPrediction(
      predictionWeather: predictionWeather,
    );
  }

  TextStyle getStyle({Color? riskColor}) {
    final color = riskColor ?? LightColors.text;
    return LightTextStyles.poppinsS15W500Lsp02(
      color: LightColors.text.withOpacity(0.75),
    );
  }

  Widget getPrediction({required PredictionWeather predictionWeather}) {
    final PredictionsDictionary dict = dictionaryManager.getSelectedData.predictions;
    final todayWeather = predictionWeather.nextWeather;
    final yesterdayWeather = predictionWeather.prevWeather;
    final bool noRisk = predictionWeather.hasRisk == RiskPrediction.noRisk;
    String? textRisk;
    Color riskColor;
    switch (predictionWeather.hasRisk) {
      case RiskPrediction.noRisk:
        textRisk = dict.noRisk;
        riskColor = LightColors.green;
        break;
      case RiskPrediction.risk:
        textRisk = dict.riskExist;
        riskColor = LightColors.orange;

        break;
      case RiskPrediction.increasedRisk:
        textRisk = dict.increasedRiskExist;
        riskColor = LightColors.logoRed;

        break;
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: getDecoration(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: MigIcon(
                    svgPath: SvgPathPicker.attention,
                    size: 40.0,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        textRisk,
                        style: LightTextStyles.poppinsS20W400(
                          color: riskColor.withOpacity(0.75),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (noRisk)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            PngPathPicker.weather,
                            width: 100.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 30.0,
                              ),
                              getIcon(SvgPathPicker.temperature),
                              getIcon(SvgPathPicker.humidity),
                              getIcon(SvgPathPicker.pressure),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Text(
                            dict.today,
                            style: getStyle(),
                          ),
                          SizedBox(height: 20.0),
                          getText(value: todayWeather.temperature.toString() + '°C'),
                          getText(value: todayWeather.humidity.toString() + '%'),
                          getText(value: todayWeather.pressure.toString()),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          dict.yesterday,
                          style: getStyle(),
                        ),
                        SizedBox(height: 20.0),
                        getText(value: yesterdayWeather.temperature.toInt().toString() + '°C'),
                        getText(value: yesterdayWeather.humidity.toString() + '%'),
                        getText(value: yesterdayWeather.pressure.toString()),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          answerButtons(),
        ],
      ),
    );
  }

  Widget getIcon(String value) {
    return MigIcon(
      svgPath: value,
      size: 30.0,
    );
  }

  Widget getText({required String value, Color? riskColor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9.0, top: 3.0),
      child: Text(
        value,
        style: getStyle(riskColor: riskColor),
      ),
    );
  }

  Widget answerButtons() {
    final PredictionsDictionary dict = dictionaryManager.getSelectedData.predictions;

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Expanded(
            child: LightOutlineButton(
              onTap: () {},
              text: dict.relevant,
              color: LightColors.text.withOpacity(0.6),
              textStyle: LightTextStyles.poppinsS18W500(),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: LightOutlineButton(
              onTap: () {},
              text: dict.notRelevant,
              color: LightColors.text.withOpacity(0.6),
              textStyle: LightTextStyles.poppinsS18W500(),
            ),
          ),
        ],
      ),
    );
  }

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
