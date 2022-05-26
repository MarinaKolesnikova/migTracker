// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptoms_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymptomsGroup _$$_SymptomsGroupFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SymptomsGroup',
      json,
      ($checkedConvert) {
        final val = _$_SymptomsGroup(
          id: $checkedConvert('id', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
                  .toList()),
          groupName: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'groupName': 'name'},
    );

Map<String, dynamic> _$$_SymptomsGroupToJson(_$_SymptomsGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'name': instance.groupName,
    };
