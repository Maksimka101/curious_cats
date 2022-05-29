import 'package:cached_network_image/cached_network_image.dart';
import 'package:curious_cats/generated/flutter_gen/assets.gen.dart';
import 'package:flutter/material.dart';

class KittyFactImageCard extends StatelessWidget {
  const KittyFactImageCard({
    super.key,
    required this.imageUrl,
    this.fillImage = false,
    this.child,
  });

  final String? imageUrl;
  final bool fillImage;
  final Widget? child;

  ImageProvider get _previewProvider {
    final factPreviewUrl = imageUrl;
    if (factPreviewUrl == null) {
      return AssetImage(Assets.images.fallbackKittyImage.path);
    } else {
      return CachedNetworkImageProvider(factPreviewUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    final image = Image(
      fit: BoxFit.cover,
      image: _previewProvider,
    );
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Stack(
        children: [
          if (fillImage)
            Positioned.fill(
              child: image,
            )
          else
            image,
          if (child != null) child!,
        ],
      ),
    );
  }
}
