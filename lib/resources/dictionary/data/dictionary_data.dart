import 'package:diplom_proj/resources/dictionary/data/advices_dictionary/advices_dictionary.dart';

import 'package:diplom_proj/resources/dictionary/data/home_dictionary/home_dictionary.dart';
import 'package:diplom_proj/resources/dictionary/data/messages_dictionary/messages_dictionary.dart';
import 'package:diplom_proj/resources/dictionary/data/predictions_dictionary/predictions_dictictionary.dart';
import 'package:diplom_proj/resources/dictionary/data/settings_screen/settings_dictionary.dart';

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
    @JsonKey(name: 'messages') required MessagesDictionary messages,
    @JsonKey(name: 'home') required HomeDictionary home,
    @JsonKey(name: 'calendar') required CalendarDictionary calendar,
    @JsonKey(name: 'advices') required AdvicesDictionary advice,
    @JsonKey(name: 'predictions') required PredictionsDictionary predictions,
    @JsonKey(name: 'settings') required SettingsDictionary settings,
  }) = _DictionaryData;

  factory DictionaryData.fromJson(Map<String, dynamic> json) => _$DictionaryDataFromJson(json);
}
