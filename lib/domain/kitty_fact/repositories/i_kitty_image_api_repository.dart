import 'package:fpdart/fpdart.dart';

abstract class IKittyImageApiRepository {
  Future<Either<KittyImageLoadFailure, String>> loadKittyImage();
}

class KittyImageLoadFailure {
  const KittyImageLoadFailure();
}
