import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/failure.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_local_repository.dart';
import 'package:curious_cats/utils/hive_utils.dart';
import 'package:curious_cats/utils/logger/logger.dart';
import 'package:fpdart/fpdart.dart';

class KittyFactsLocalRepository extends IKittyFactsLocalRepository {
  late final _factsBox = openLazyBox<KittyFact>(_factsBoxName);
  late final _factIdsBox = openBox<String>(_factIdsBoxNames);

  static const _factsBoxName = "facts-box";
  static const _factIdsBoxNames = "facts-ids-box";

  @override
  Future<Either<KittyFactLoadFailure, List<KittyFact>>> loadKittyFacts({
    required int factsCount,
    String? afterFactWithId,
  }) async {
    try {
      final factIdsToLoad = await _getFactIdsToLoad(factsCount, afterFactWithId);
      final loadedFacts = await _loadFactsByIds(factIds: factIdsToLoad);

      return right(loadedFacts);
    } catch (e, st) {
      logError(e, st, "Failed to load local kitty facts");
      return const Left(KittyFactLoadFailure());
    }
  }

  Future<List<KittyFact>> _loadFactsByIds({required Iterable<String> factIds}) async {
    final factsBox = await _factsBox;
    final loadedFacts = await Future.wait(factIds.map(factsBox.get));
    return loadedFacts.where((fact) => fact != null).cast<KittyFact>().toList();
  }

  Future<Iterable<String>> _getFactIdsToLoad(int factsCount, String? factId) async {
    final factIdsBox = await _factIdsBox;
    // Reverse ids to show new facts at first.
    var factIds = factIdsBox.values.toList().reversed;

    if (factId != null) {
      final factIdsList = factIds.toList();
      factIds = factIdsList.skip(factIdsList.indexOf(factId) + 1);
    }

    return factIds.take(factsCount);
  }

  @override
  Future<void> saveKittyFact(KittyFact fact) async {
    try {
      await _factsBox.then((factsBox) => factsBox.put(fact.id, fact));
      await _factIdsBox.then((factIdsBox) => factIdsBox.add(fact.id));
    } catch (e, st) {
      logError(e, st, "Failed to cache kitty fact");
    }
  }
}
