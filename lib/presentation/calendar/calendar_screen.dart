import 'package:diplom_proj/presentation/calendar/mixins/calendar_screen_mixin.dart';
import 'package:diplom_proj/presentation/calendar/widgets/calendar_widget.dart';
import 'package:diplom_proj/presentation/calendar/widgets/events_block.dart';
import 'package:diplom_proj/presentation/shared/widgets/sliver_pull_to_refresh/sliver_pull_to_refresh.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/domain/attack_bloc.dart';
import 'package:diplom_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:diplom_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> with CalendarScreenMixin {
  @override
  Widget build(BuildContext context) {
    final CalendarDictionary dict = dictionaryManager.getSelectedData.calendar;

    return BlocBuilder<AppBloc, AppState>(
      builder: (appContext, appState) {
        return BlocBuilder<AttackBloc, AttackState>(
          builder: (context, state) {
            return MainLayout(
              appBarLabel: dict.calendarLabel,
              child: SliverPullToRefresh(
                childScrollController: scrollController,
                bottomExtent: 80.0,
                needExtent: false,
                withShadow: true,
                onRefresh: onRefresh,
                child: SliverToBoxAdapter(
                  child: ListView(
                    shrinkWrap: true,
                    controller: scrollController,
                    children: [
                      onLoading(
                        isLoaded: state.isLoading && state.minDate == null,
                        child: CalendarWidget(
                          attacks: state.attackList,
                          minDate: state.minDate ?? DateTime.now(),
                          maxDate: DateTime.now(),
                          isDataUpdated: state.fetchedNewData,
                        ),
                      ),
                      EventsBlock(attacks: state.attackList),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
