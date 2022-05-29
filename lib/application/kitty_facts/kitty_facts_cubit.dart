import 'dart:async';

import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kitty_facts_cubit.freezed.dart';

class KittyHistoryFactsCubit extends Cubit<KittyHistoryFactsState> {
  KittyHistoryFactsCubit({required this.kittyFactsRepository}) : super(const _Initial());

  final IKittyFactsRepository kittyFactsRepository;
  StreamSubscription<List<KittyFact>>? _factsSubscription;
  var _loadInProgress = false;

  Future<void> loadFactsAndSubscribe() async {
    await _factsSubscription?.cancel();

    _factsSubscription = kittyFactsRepository.dataStream.listen((facts) {
      emit(_Loaded(facts));
    });

    await _loadKittyFacts();
  }

  /// Load facts.
  ///
  /// If facts loading already in progress nothing will happen.
  Future<void> loadMoreFacts() async {
    await _loadKittyFacts();
  }

  Future<void> _loadKittyFacts() async {
    if (!_loadInProgress) {
      _loadInProgress = true;
      final response = await kittyFactsRepository.loadKittyFacts();
      if (response.isSome()) {
        emit(const _Error());
      }
      _loadInProgress = false;
    }
  }

  @override
  Future<void> close() async {
    await super.close();

    await _factsSubscription?.cancel();
  }
}

@freezed
class KittyHistoryFactsState with _$KittyHistoryFactsState {
  const factory KittyHistoryFactsState.initial() = _Initial;
  const factory KittyHistoryFactsState.loaded(List<KittyFact> facts) = _Loaded;
  const factory KittyHistoryFactsState.error() = _Error;
}
