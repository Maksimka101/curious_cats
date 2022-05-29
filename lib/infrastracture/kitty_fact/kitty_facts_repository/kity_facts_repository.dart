import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/failure.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_repository.dart';
import 'package:curious_cats/domain/reactive_repository/reactive_repository.dart';
import 'package:fpdart/fpdart.dart';

class KittyFactsRepository extends IKittyFactsRepository with ReactiveRepository<List<KittyFact>> {
  KittyFactsRepository({required super.localRepository, required super.apiRepository});

  @override
  Future<Option<KittyFactLoadFailure>> loadKittyFacts([int factsCount = 15]) async {
    final factsResult = await localRepository.loadKittyFacts(
      factsCount: factsCount,
      afterFactWithId: _lastLoadedFactId,
    );
    return factsResult.fold(
      some,
      (facts) {
        _emitOldFacts(facts);
        return const None();
      },
    );
  }

  String? get _lastLoadedFactId => data?.lastOption.toNullable()?.id;

  @override
  Future<Either<KittyFactLoadFailure, KittyFact>> loadRandomFact() async {
    final factResult = await apiRepository.loadRandomFact();
    return factResult.fold(
      left,
      (fact) {
        _emitNewFact(fact);

        localRepository.saveKittyFact(fact);
        return right(fact);
      },
    );
  }

  void _emitOldFacts(List<KittyFact> newFacts) {
    final loadedFacts = data;
    emit([
      if (loadedFacts != null) ...loadedFacts,
      ...newFacts,
    ]);
  }

  void _emitNewFact(KittyFact fact) {
    final loadedFacts = data;
    emit([
      fact,
      if (loadedFacts != null) ...loadedFacts,
    ]);
  }
}
