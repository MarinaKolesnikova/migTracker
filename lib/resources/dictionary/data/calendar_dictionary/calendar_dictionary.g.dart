// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarDictionary _$$_CalendarDictionaryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CalendarDictionary',
      json,
      ($checkedConvert) {
        final val = _$_CalendarDictionary(
          calendarLabel: $checkedConvert('calendar_label', (v) => v as String),
          attacks: $checkedConvert('attacks', (v) => v as String),
          today: $checkedConvert('today', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'calendarLabel': 'calendar_label'},
    );

Map<String, dynamic> _$$_CalendarDictionaryToJson(
        _$_CalendarDictionary instance) =>
    <String, dynamic>{
      'calendar_label': instance.calendarLabel,
      'attacks': instance.attacks,
      'today': instance.today,
    };
