import 'package:diplom_proj/presentation/advices/widgets/advice_items.dart';
import 'package:diplom_proj/presentation/predictions/prediction_item.dart';
import 'package:diplom_proj/resources/dictionary/data/advices_dictionary/advices_dictionary.dart';
import 'package:diplom_proj/resources/dictionary/data/predictions_dictionary/predictions_dictictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/advices/domain/advice_bloc.dart';
import 'package:diplom_proj/src/predictions/domain/prediction_bloc.dart';
import 'package:diplom_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PredictionScreen extends StatefulWidget {
  PredictionScreen({Key? key}) : super(key: key);

  @override
  State<PredictionScreen> createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  @override
  Widget build(BuildContext context) {
    final PredictionsDictionary dict = dictionaryManager.getSelectedData.predictions;

    return BlocProvider(
      create: (context) => PredictionBloc.byGetIt(),
      child: BlocBuilder<PredictionBloc, PredictionState>(
        builder: (context, state) {
          return MainLayout(
            appBarLabel: dict.prediction,
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PredictionsItem(predictionWeather: state.predictionList[index]),
                );
              }),
              itemCount: state.predictionList.length,
            ),
          );
        },
      ),
    );
  }
}
