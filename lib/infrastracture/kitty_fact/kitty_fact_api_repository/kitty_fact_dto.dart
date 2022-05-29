import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kitty_fact_dto.g.dart';

@JsonSerializable(createToJson: false)
class KittyFactDto {
  const KittyFactDto({
    required this.id,
    required this.text,
    required this.createdAt,
  });

  factory KittyFactDto.fromJson(Json json) => _$KittyFactDtoFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  final String text;
  final String createdAt;

  KittyFact toEntity(String? imageUrl) {
    return KittyFact(
      id: id,
      text: text,
      createdAt: DateTime.parse(createdAt),
      imageUrl: imageUrl,
    );
  }
}
