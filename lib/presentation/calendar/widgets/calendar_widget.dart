import 'package:diplom_proj/presentation/calendar/mixins/calendar_widget_mixin.dart';
import 'package:diplom_proj/presentation/calendar/widgets/today_widget.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:diplom_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    required this.attacks,
    required this.minDate,
    required this.maxDate,
    required this.isDataUpdated,
    Key? key,
  }) : super(key: key);

  final List<AttackModel> attacks;

  final DateTime minDate;
  final DateTime maxDate;
  final bool isDataUpdated;

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> with CalendarWidgetMixin {
  @override
  void didUpdateWidget(covariant CalendarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isDataUpdated) {
      initData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TodayWidget(
      onTap: onTodayTap,
      child: TableCalendar(
        firstDay: minDate,
        lastDay: maxDate,
        eventLoader: getEventsForDay,
        focusedDay: focusDate,
        currentDay: selectedDay,
        pageJumpingEnabled: true,
        selectedDayPredicate: selectedDayPredecate,
        availableCalendarFormats: const {CalendarFormat.month: 'Month'},
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: daysStyle,
          weekendStyle: daysStyle,
        ),
        headerStyle: HeaderStyle(
          titleCentered: true,
          titleTextStyle: LightTextStyles.poppinsS18W500(),
          leftChevronIcon: leftIcon,
          rightChevronIcon: rightIcon,
        ),
        holidayPredicate: holidayPredecate,
        calendarBuilders: CalendarBuilders<AttackModel>(
          singleMarkerBuilder: singleMarkerBuilder,
          defaultBuilder: todayBuilder,
          holidayBuilder: holidayBuilder,
          todayBuilder: todayBuilder,
        ),
        locale: context.read<AppBloc>().getLocale?.languageCode,
        startingDayOfWeek: StartingDayOfWeek.monday,
        calendarFormat: calendarFormat,
        calendarStyle: CalendarStyle(
          markersMaxCount: 1,
          weekendTextStyle: defaultTextStyle,
          defaultTextStyle: defaultTextStyle,
          todayTextStyle: defaultTextStyle,
          selectedTextStyle: highlitedTextStyle,
          selectedDecoration: selectedDecoration(),
          markerDecoration: markerDecoration(),
        ),
        onDaySelected: onDaySelected,
      ),
    );
  }
}
