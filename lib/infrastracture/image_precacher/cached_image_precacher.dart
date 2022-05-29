import 'package:cached_network_image/cached_network_image.dart';
import 'package:curious_cats/domain/utils/image_precacher/i_image_precacher.dart';
import 'package:flutter/widgets.dart';

class CachedImagePrecacher extends IImagePrecacher {
  CachedImagePrecacher({required this.contextLoader});

  final ContextLoader contextLoader;

  @override
  Future<void> precacheNetworkImage(String imageUrl) async {
    await precacheImage(CachedNetworkImageProvider(imageUrl), contextLoader());
  }
}

typedef ContextLoader = BuildContext Function();
