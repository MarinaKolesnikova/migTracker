import 'package:diplom_proj/presentation/advices/widgets/advice_items.dart';
import 'package:diplom_proj/resources/dictionary/data/advices_dictionary/advices_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/advices/domain/advice_bloc.dart';
import 'package:diplom_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdviceScreen extends StatefulWidget {
  AdviceScreen({Key? key}) : super(key: key);

  @override
  State<AdviceScreen> createState() => _AdviceScreenState();
}

class _AdviceScreenState extends State<AdviceScreen> {
  @override
  Widget build(BuildContext context) {
    final AdvicesDictionary dict = dictionaryManager.getSelectedData.advice;

    return BlocProvider(
      create: (context) => AdviceBloc.byGetIt(),
      child: BlocBuilder<AdviceBloc, AdviceState>(
        builder: (context, state) {
          return MainLayout(
            appBarLabel: dict.advice,
            child: ListView.builder(
              itemCount: state.adviceDto.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AdviceItem(
                    adviceItem: state.adviceDto[index],
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
