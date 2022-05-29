abstract class IImagePrecacher {
  /// This method is used to precache image by it's url.
  ///
  /// It is very useful when you want user to see image immediately, without loading.
  Future<void> precacheNetworkImage(String imageUrl);
}
