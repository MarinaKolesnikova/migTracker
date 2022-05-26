// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TemperatureDTO _$$_TemperatureDTOFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_TemperatureDTO',
      json,
      ($checkedConvert) {
        final val = _$_TemperatureDTO(
          min: $checkedConvert('min', (v) => (v as num).toDouble()),
          max: $checkedConvert('max', (v) => (v as num).toDouble()),
          night: $checkedConvert('night', (v) => (v as num).toDouble()),
          eve: $checkedConvert('eve', (v) => (v as num).toDouble()),
          morn: $checkedConvert('morn', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TemperatureDTOToJson(_$_TemperatureDTO instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
