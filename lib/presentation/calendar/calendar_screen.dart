import 'package:diplom_proj/presentation/calendar/mixins/calendar_screen_mixin.dart';
import 'package:diplom_proj/presentation/calendar/widgets/calendar_widget.dart';
import 'package:diplom_proj/presentation/calendar/widgets/events_block.dart';
import 'package:diplom_proj/presentation/main/pop_ups/attack_pop_up.dart';
import 'package:diplom_proj/presentation/pop_up/pop_up_manager.dart';
import 'package:diplom_proj/presentation/shared/widgets/app_bar/light_app_bar.dart';
import 'package:diplom_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
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
              appBar: LightAppBar(
                rightSideWidget: getToPdf(),
                label: dict.calendarLabel,
                leftPadding: 60.0,
              ),
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
                      EventsBlock(attacks: state.calendarList),
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

  Widget getToPdf() {
    return NonAnimatedInkWell(
      onTap: () {
        context.showPopUp(AttackPopUp.toPdfPopUp(context));
      },
      child: Container(
        decoration: BoxDecoration(
          color: LightColors.outlinedButtonColor.withOpacity(0.8),
          border: Border.all(
            color: LightColors.text.withOpacity(0.9),
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
          child: Text(
            'to PDF',
            style: LightTextStyles.poppinsS12W400Lsp0(
              color: LightColors.text.withOpacity(0.9),
            ),
          ),
        ),
      ),
    );
  }
}
