import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/failure.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_api_repository.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_local_repository.dart';
import 'package:curious_cats/domain/reactive_repository/reactive_repository.dart';
import 'package:fpdart/fpdart.dart';

abstract class IKittyFactsRepository implements ReactiveRepository<List<KittyFact>> {
  IKittyFactsRepository({
    required this.localRepository,
    required this.apiRepository,
  });

  final IKittyFactsLocalRepository localRepository;
  final IKittyFactsApiRepository apiRepository;

  /// Loads [factsCount] cached kitty facts and [emit]s them.
  ///
  /// Call this function again to load more facts.
  Future<Option<KittyFactLoadFailure>> loadKittyFacts([int factsCount = 15]);

  /// Loads random fact and [emit]s it.
  Future<Either<KittyFactLoadFailure, KittyFact>> loadRandomFact();
}
