import 'package:bloc_test/bloc_test.dart';
import 'package:curious_cats/application/kitty_facts/kitty_facts_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils/mock_data/kitty_fact_mock_data.dart';
import '../../utils/mocks/mock_kitty_fact_repositories.dart';

void main() {
  final mockKittyFactsRepository = MockKittyFactsRepository();

  KittyHistoryFactsCubit createBloc() {
    return KittyHistoryFactsCubit(
      kittyFactsRepository: mockKittyFactsRepository,
    );
  }

  setUp(() {
    reset(mockKittyFactsRepository);
    when(
      mockKittyFactsRepository.loadKittyFacts,
    ).thenAnswer((_) async {
      mockKittyFactsRepository.emit([kittyFactMockData]);
      return const None();
    });
  });

  blocTest<KittyHistoryFactsCubit, KittyHistoryFactsState>(
    "Test load and subscribe",
    build: createBloc,
    act: (bloc) => bloc.loadFactsAndSubscribe(),
    expect: () => [
      KittyHistoryFactsState.loaded([kittyFactMockData]),
    ],
  );

  blocTest<KittyHistoryFactsCubit, KittyHistoryFactsState>(
    "Test multiple loading",
    build: createBloc,
    wait: const Duration(milliseconds: 400),
    act: (bloc) => bloc
      ..loadFactsAndSubscribe()
      ..loadMoreFacts(),
    verify: (bloc) {
      verify(() => mockKittyFactsRepository.loadKittyFacts(any())).called(1);
    },
  );
}
