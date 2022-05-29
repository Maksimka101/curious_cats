part of 'the_cat_api_image_repository.dart';

@JsonSerializable(createToJson: false)
class _KittyImage {
  _KittyImage(this.url);

  factory _KittyImage.fromJson(Json json) => _$KittyImageFromJson(json);

  final String url;
}
