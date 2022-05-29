import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_repository.dart';
import 'package:curious_cats/domain/reactive_repository/reactive_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockKittyFactsRepository extends Mock with ReactiveRepository<List<KittyFact>> implements IKittyFactsRepository {}
