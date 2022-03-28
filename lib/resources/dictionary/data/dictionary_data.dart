import 'package:diplom_proj/resources/dictionary/data/validation_dictionary/validation_dictionary.dart';
import 'package:diplom_proj/resources/resources.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_data.freezed.dart';

part 'dictionary_data.g.dart';

@freezed
class DictionaryData with _$DictionaryData {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory DictionaryData({
    @JsonKey(name: 'auth') required AuthDictionary auth,
    @JsonKey(name: 'main') required MainDictionary main,
    @JsonKey(name: 'validation') required ValidationDictionary validation,
  }) = _DictionaryData;

  factory DictionaryData.fromJson(Map<String, dynamic> json) => _$DictionaryDataFromJson(json);
}
