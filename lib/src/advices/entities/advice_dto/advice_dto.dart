import 'package:freezed_annotation/freezed_annotation.dart';

part 'advice_dto.freezed.dart';
part 'advice_dto.g.dart';

@freezed
class AdviceDTO with _$AdviceDTO {
  const AdviceDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AdviceDTO({
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'adviceId') required String adviceId,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'title') required String title,
  }) = _AdviceDTO;
  factory AdviceDTO.fromJson(Map<String, dynamic> json) => _$AdviceDTOFromJson(json);

  factory AdviceDTO.mock() {
    return AdviceDTO(
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/migtracker.appspot.com/o/headacheOneSide-1165294195-770x533-1-650x428.jpeg?alt=media&token=c1e55bde-9dfa-40d7-a6e8-ea49e60cc415',
      adviceId: '1',
      content: 'Turn off the lights. Migraines often increase sensitivity to light and sound. Relax in a dark, quiet room. Sleep if you can.\n\n' +
          'Try temperature therapy. Apply hot or cold compresses to your head or neck. Ice packs have a numbing effect, which may dull the sensation of pain. Hot packs and heating pads can relax tense muscles. Warm showers or baths may have a similar effect.\n\n' +
          'Drink a caffeinated beverage. In small amounts, caffeine alone can relieve migraine pain in the early stages or enhance the pain-reducing effects of acetaminophen (Tylenol, others) and aspirin.',
      title: 'Migraines: Simple steps to head off the pain',
    );
  }
}
