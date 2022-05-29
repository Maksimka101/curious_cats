import 'package:bloc_test/bloc_test.dart';
import 'package:curious_cats/application/kitty_facts/kitty_random_fact_bloc.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/failure.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_repository.dart';
import 'package:curious_cats/domain/utils/image_precacher/i_image_precacher.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils/mock_data/kitty_fact_mock_data.dart';
import '../../utils/mocks/mock_image_precacher.dart';
import '../../utils/mocks/mock_kitty_fact_repositories.dart';

void main() {
  final IImagePrecacher imagePrecacher = MockImagePrecacher();
  final IKittyFactsRepository factsRepository = MockKittyFactsRepository();
  final kittyFactNoImageMock = kittyFactMockData.copyWith(imageUrl: null);

  KittyRandomFactBloc createBloc() {
    return KittyRandomFactBloc(
      imagePrecacher: imagePrecacher,
      kittyFactsRepository: factsRepository,
    );
  }

  setUpAll(() {
    when(
      factsRepository.loadRandomFact,
    ).thenAnswer((_) async => Right(kittyFactMockData));
    when(
      () => imagePrecacher.precacheNetworkImage(any()),
    ).thenAnswer((_) async {});
  });

  blocTest<KittyRandomFactBloc, KittyRandomFactState>(
    "Load fact and precache its image",
    build: createBloc,
    act: (bloc) => bloc.add(const KittyRandomFactEvent.loadRandomFact()),
    expect: () => [
      const KittyRandomFactState.factLoadingInProgress(),
      KittyRandomFactState.factLoaded(kittyFactMockData),
    ],
    verify: (bloc) {
      verify(
        () => imagePrecacher.precacheNetworkImage(kittyFactMockData.imageUrl!),
      ).called(1);
    },
  );

  blocTest<KittyRandomFactBloc, KittyRandomFactState>(
    "Load fact and don't precache its image because it doesn't exist",
    build: createBloc,
    setUp: () {
      when(
        factsRepository.loadRandomFact,
      ).thenAnswer((_) async => Right(kittyFactNoImageMock));
    },
    act: (bloc) => bloc.add(const KittyRandomFactEvent.loadRandomFact()),
    expect: () => [
      const KittyRandomFactState.factLoadingInProgress(),
      KittyRandomFactState.factLoaded(kittyFactNoImageMock),
    ],
    verify: (bloc) {
      verifyNever(
        () => imagePrecacher.precacheNetworkImage(any()),
      );
    },
  );

  blocTest<KittyRandomFactBloc, KittyRandomFactState>(
    "Load fact with retry",
    build: createBloc,
    wait: const Duration(milliseconds: 500),
    setUp: () {
      reset(factsRepository);
      var loadCount = 0;
      when(
        factsRepository.loadRandomFact,
      ).thenAnswer((_) async {
        if (loadCount != 0) {
          loadCount++;
          return Right(kittyFactNoImageMock);
        } else {
          loadCount++;
          return const Left(KittyFactLoadFailure());
        }
      });
    },
    act: (bloc) => bloc.add(const KittyRandomFactEvent.loadRandomFact()),
    expect: () => [
      const KittyRandomFactState.factLoadingInProgress(),
      KittyRandomFactState.factLoaded(kittyFactNoImageMock),
    ],
    verify: (bloc) {
      verify(factsRepository.loadRandomFact).called(2);
    },
  );
}
