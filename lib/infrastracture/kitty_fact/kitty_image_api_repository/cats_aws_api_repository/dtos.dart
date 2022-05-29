part of 'cats_asw_api_repository.dart';

@JsonSerializable(createToJson: false)
class _KittyImage {
  _KittyImage(this.file);

  factory _KittyImage.fromJson(Json json) => _$KittyImageFromJson(json);

  final String file;
}
