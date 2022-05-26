import 'package:diplom_proj/presentation/calendar/widgets/calendar_widget.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';
import 'package:diplom_proj/presentation/shared/extensions/datetime_extension.dart';
import 'package:table_calendar/table_calendar.dart';

mixin CalendarWidgetMixin<T extends CalendarWidget> on State<T> {
  late DateTime selectedDay;
  late CalendarFormat calendarFormat;
  late DateTime focusDate;
  late DateTime minDate;
  late DateTime maxDate;

  TextStyle get defaultTextStyle => LightTextStyles.poppinsS14W400(color: LightColors.text);
  TextStyle get highlitedTextStyle => LightTextStyles.nunitoS14W700(color: LightColors.text);
  TextStyle get daysStyle => LightTextStyles.nunitoS14W700(color: LightColors.linkBlue);

  Widget get leftIcon => Icon(
        Icons.chevron_left,
        color: LightColors.text,
      );

  Widget get rightIcon => Icon(
        Icons.chevron_right,
        color: LightColors.text,
      );

  @override
  void initState() {
    super.initState();
    initData();
  }

  void onTodayTap() {
    //  context.read<CalendarBloc>().add(SetCurrentDateEvent(selectedDate: DateTime.now()));
    initData();
    setState(() {});
  }

  void initData() {
    selectedDay = DateTime.now();
    focusDate = DateTime.now();
    calendarFormat = CalendarFormat.month;
    minDate = DateTime.utc(widget.minDate.year - 1);
    maxDate = DateTime.utc(widget.maxDate.year + 1);
  }

  List<AttackModel> getEventsForDay(DateTime day) {
    final List<AttackModel> eventsList = [];
    eventsList.addAll(todayDate(widget.attacks, day));

    return eventsList;
  }

  static List<AttackModel> todayDate(List<AttackModel> birthList, DateTime curDate) {
    final List<AttackModel> attackList = [];
    final comparing = (AttackModel element) {
      final date = element.date;
      if (date.day == curDate.day && date.month == curDate.month && date.year == curDate.year) {
        attackList.add(element);
      }
    };
    birthList.forEach(comparing);
    return attackList;
  }

  Widget? singleMarkerBuilder(context, day, event) {
    if (event.isHoliday == true) {
      return SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 3.0),
      child: Container(
        height: 7.0,
        width: 7.0,
        decoration: markerDecoration(),
      ),
    );
  }

  Widget? holidayBuilder(context, day, event) {
    if (DateTimeComparable(day).isTheSameDate(DateTime.now())) {
      return todayBuilder(context, day, event);
    }
    return holidayWidget(day);
  }

  bool holidayPredecate(DateTime day) {
    final index = widget.attacks.indexWhere((element) => DateTimeComparable(element.date).isTheSameDate(day));
    return index != -1;
  }

  bool selectedDayPredecate(DateTime day) {
    return isSameDay(selectedDay, day);
  }

  Widget todayBuilder(context, day, focusedDay) {
    final index = widget.attacks.indexWhere((element) => DateTimeComparable(element.date).isTheSameDate(day));
    if (DateTimeComparable(day).isTheSameDate(DateTime.now())) {
      if (index != -1) {
        return todayWidget(day, isHoliday: true);
      }
      return todayWidget(day, isHoliday: false);
    }
    return Center(
      child: Text(
        day.day.toString(),
        style: LightTextStyles.nunitoS14W700(color: LightColors.text),
      ),
    );
  }

  BoxDecoration selectedDecoration() {
    return BoxDecoration(
      color: LightColors.text,
      shape: BoxShape.circle,
    );
  }

  BoxDecoration markerDecoration() {
    return BoxDecoration(
      color: LightColors.linkBlue,
      shape: BoxShape.circle,
    );
  }

  void onDaySelected(DateTime selected, DateTime focusedDay) {
    //   context.read<CalendarBloc>().add(SetCurrentDateEvent(selectedDate: focusedDay));
    setState(() {
      selectedDay = selected;
      focusDate = focusedDay;
    });
  }

  Widget todayWidget(DateTime day, {required bool isHoliday}) {
    return Center(
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isHoliday ? LightColors.errorColor : Colors.transparent,
          border: Border.all(
            color: LightColors.text.withOpacity(0.7),
          ),
        ),
        child: Center(
          child: Text(
            day.day.toString(),
            style: LightTextStyles.nunitoS14W700(color: LightColors.text),
          ),
        ),
      ),
    );
  }

  Widget holidayWidget(DateTime day) {
    return Center(
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          color: LightColors.errorColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            day.day.toString(),
            style: LightTextStyles.nunitoS14W700(color: LightColors.text),
          ),
        ),
      ),
    );
  }
}
