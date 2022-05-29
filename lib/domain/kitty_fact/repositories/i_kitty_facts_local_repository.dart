import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IKittyFactsLocalRepository {
  /// Loads [factsCount] facts from local storage.
  ///
  /// If [afterFactWithId] is specified loads facts that has been added earlier the fact with given [afterFactWithId].
  /// Otherwise loads latest added facts.
  Future<Either<KittyFactLoadFailure, List<KittyFact>>> loadKittyFacts({
    required int factsCount,
    String? afterFactWithId,
  });

  Future<void> saveKittyFact(KittyFact fact);
}
