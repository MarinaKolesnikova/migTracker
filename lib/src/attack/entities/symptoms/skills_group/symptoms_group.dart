import 'package:diplom_proj/src/attack/entities/symptoms/symptom_model/symptom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:diplom_proj/src/attack/entities/symptoms/picking_group_abstract/picking_group_abstract.dart';

part 'symptoms_group.freezed.dart';
part 'symptoms_group.g.dart';

@freezed
class SymptomsGroup extends PickingGroupAbstract with _$SymptomsGroup {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory SymptomsGroup({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'items') required List<Symptom> items,
    @JsonKey(name: 'name') required String groupName,
  }) = _SymptomsGroup;

  factory SymptomsGroup.mock() => SymptomsGroup(
        id: '0',
        groupName: 'Any',
        items: [
          Symptom.mock(),
          Symptom.mock(),
        ],
      );

  factory SymptomsGroup.fromJson(Map<String, dynamic> json) => _$SymptomsGroupFromJson(json);
}
