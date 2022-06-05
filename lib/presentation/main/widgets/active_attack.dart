import 'package:diplom_proj/presentation/main/pop_ups/attack_pop_up.dart';
import 'package:diplom_proj/presentation/pop_up/pop_up_manager.dart';
import 'package:diplom_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:diplom_proj/presentation/shared/widgets/mig_icon/mig_icon.dart';
import 'package:diplom_proj/resources/dictionary/data/main_dictionary/attack_dictionary/attack_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:diplom_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:intl/intl.dart';

class ActiveAttack extends StatefulWidget {
  const ActiveAttack({
    required this.ongoingAttack,
    Key? key,
  }) : super(key: key);
  final AttackModel ongoingAttack;

  @override
  State<ActiveAttack> createState() => _ActiveAttackState();
}

class _ActiveAttackState extends State<ActiveAttack> {
  late final StopWatchTimer _stopWatchTimer;
  @override
  void initState() {
    super.initState();
    _stopWatchTimer = StopWatchTimer(
      onChangeRawMinute: (value) {
        // setState(() {});
      },
      onEnded: () {
        print('onEnded');
      },
    );
    _stopWatchTimer.minuteTime.listen((value) => print('minuteTime $value'));
  }

  @override
  void dispose() {
    _stopWatchTimer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AttackDictionary dict = dictionaryManager.getSelectedData.main.attackDictionary;

    return Container(
      height: 170.0,
      padding: const EdgeInsets.all(10.0),
      decoration: getDecoration(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  getDate(widget.ongoingAttack.date),
                  style: LightTextStyles.poppinsS12W400(color: LightColors.text),
                ),
              ),
              MigIcon(
                svgPath: SvgPathPicker.delete,
                size: 25.0,
              ),
            ],
          ),
          Text(
            'ONGOING ATTACK',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: LightTextStyles.poppinsS14W400(color: LightColors.text),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Text(
                    widget.ongoingAttack.description.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: LightTextStyles.poppinsS14W400(color: LightColors.text),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: getTimer(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: LightOutlineButton(
              onTap: () {
                context.showPopUp(AttackPopUp.submitAttack(context));
              },
              heigth: 40.0,
              text: dict.submit,
              color: LightColors.text.withOpacity(0.6),
              textStyle: LightTextStyles.poppinsS18W500(),
            ),
          ),
        ],
      ),
    );
  }

  String getDate(DateTime date) {
    final DateFormat formatter = DateFormat('dd-MM-yyyy  HH:mm');
    return formatter.format(date);
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

  Widget getTimer() {
    return StreamBuilder<int>(
        stream: _stopWatchTimer.minuteTime,
        initialData: _stopWatchTimer.minuteTime.value,
        builder: (context, snap) {
          final value = snap.data;
          final hInt = value != null ? value ~/ 60 : 0;
          final mInt = value != null ? value % 60 : 0;

          final String hours = hInt > 9 ? hInt.toString() : '0$hInt';
          final String minutes = mInt > 9 ? mInt.toString() : '0$mInt';

          print('Listen every minute. $value');
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              hours + ':' + minutes,
              style: LightTextStyles.poppinsW700(
                color: LightColors.text,
                fontSize: 24.0,
              ),
            ),
          );
        });
  }
}
