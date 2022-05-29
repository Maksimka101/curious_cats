import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_repository.dart';
import 'package:curious_cats/domain/utils/image_precacher/i_image_precacher.dart';
import 'package:curious_cats/utils/functional_utils/functional_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kitty_random_fact_bloc.freezed.dart';
part 'kitty_random_fact_models.dart';

class KittyRandomFactBloc extends Bloc<KittyRandomFactEvent, KittyRandomFactState> {
  KittyRandomFactBloc({
    required this.kittyFactsRepository,
    required this.imagePrecacher,
  }) : super(const KittyRandomFactState.initial()) {
    on<_LoadRandomFactEvent>(_onLoadRandomFact);
  }

  final IKittyFactsRepository kittyFactsRepository;
  final IImagePrecacher imagePrecacher;

  /// Tries to load random fact and emits it.
  Future<void> _onLoadRandomFact(_LoadRandomFactEvent _, _Emitter emit) async {
    if (_isInLoading) {
      return;
    }
    emit(const _FactLoadingInProgress());
    final factResult = await _loadRandomFact(5);

    emit(
      await factResult.match(
        (fact) async {
          final factImageUrl = fact.imageUrl;
          if (factImageUrl != null) {
            await imagePrecacher.precacheNetworkImage(factImageUrl);
          }

          return _FactLoaded(fact);
        },
        constF0(const _FailedToLoadFact()),
      ),
    );
  }

  Future<Option<KittyFact>> _loadRandomFact(int maxAttempts, [int attempt = 0]) async {
    if (attempt == maxAttempts) {
      return const None();
    } else {
      await Future.delayed(Duration(milliseconds: 200 * attempt));

      final factResult = await kittyFactsRepository.loadRandomFact();

      return factResult.fold(
        (_) => _loadRandomFact(maxAttempts, attempt + 1),
        some,
      );
    }
  }

  bool get _isInLoading => state.maybeWhen(factLoadingInProgress: () => true, orElse: () => false);
}
