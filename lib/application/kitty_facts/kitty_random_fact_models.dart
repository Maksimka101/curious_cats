part of 'kitty_random_fact_bloc.dart';

typedef _Emitter = Emitter<KittyRandomFactState>;

abstract class KittyRandomFactEvent {
  const factory KittyRandomFactEvent.loadRandomFact() = _LoadRandomFactEvent;
}

class _LoadRandomFactEvent implements KittyRandomFactEvent {
  const _LoadRandomFactEvent();
}

@freezed
class KittyRandomFactState with _$KittyRandomFactState {
  const factory KittyRandomFactState.initial() = _Initial;

  const factory KittyRandomFactState.factLoadingInProgress() = _FactLoadingInProgress;
  const factory KittyRandomFactState.factLoaded(KittyFact fact) = _FactLoaded;
  const factory KittyRandomFactState.failedToLoadFact() = _FailedToLoadFact;
}
