// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdviceDTO _$$_AdviceDTOFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_AdviceDTO',
      json,
      ($checkedConvert) {
        final val = _$_AdviceDTO(
          imgUrl: $checkedConvert('img_url', (v) => v as String),
          adviceId: $checkedConvert('adviceId', (v) => v as String),
          content: $checkedConvert('content', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'imgUrl': 'img_url'},
    );

Map<String, dynamic> _$$_AdviceDTOToJson(_$_AdviceDTO instance) =>
    <String, dynamic>{
      'img_url': instance.imgUrl,
      'adviceId': instance.adviceId,
      'content': instance.content,
      'title': instance.title,
    };
