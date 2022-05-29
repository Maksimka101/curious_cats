import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IKittyFactsApiRepository {
  Future<Either<KittyFactLoadFailure, KittyFact>> loadRandomFact();
}
