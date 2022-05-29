import 'package:curious_cats/application/kitty_facts/kitty_facts_cubit.dart';
import 'package:curious_cats/application/kitty_facts/kitty_random_fact_bloc.dart';
import 'package:curious_cats/domain/app_config/app_config.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_api_repository.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_local_repository.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_repository.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_image_api_repository.dart';
import 'package:curious_cats/domain/utils/image_precacher/i_image_precacher.dart';
import 'package:curious_cats/infrastracture/image_precacher/cached_image_precacher.dart';
import 'package:curious_cats/infrastracture/kitty_fact/kitty_fact_api_repository/kitty_facts_api_repository.dart';
import 'package:curious_cats/infrastracture/kitty_fact/kitty_fact_local_repository/kitty_fact_local_repository.dart';
import 'package:curious_cats/infrastracture/kitty_fact/kitty_facts_repository/kity_facts_repository.dart';
import 'package:curious_cats/infrastracture/kitty_fact/kitty_image_api_repository/thecatapi_repository/the_cat_api_image_repository.dart';
import 'package:curious_cats/utils/dio_utils/dio_factories.dart';
import 'package:curious_cats/utils/logger/logger.dart';
import 'package:curious_cats/utils/navigation_utils/root_navigator_loader.dart';
import 'package:curious_cats/utils/service_locator/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void configureDependencies(AppConfig appConfig) {
  locator
    ..registerSingleton(appConfig)
    ..registerLazySingleton(Dio.new)
    ..registerLazySingleton(createLogger)
    ..registerSingleton(GlobalKey<NavigatorState>())
    ..registerLazySingleton<IImagePrecacher>(
      () => CachedImagePrecacher(contextLoader: loadRootContext),
    )
    ..registerFactory(
      () => TheCatApiImageClient(createKittyImageDio(appConfig)),
    )
    ..registerFactory(
      () => KittyFactsApiClient(createFactsDio(appConfig)),
    )
    ..registerFactory<IKittyImageApiRepository>(
      () => TheCatApiImageRepository(catApiImageClient: locator()),
    )
    ..registerFactory<IKittyFactsLocalRepository>(KittyFactsLocalRepository.new)
    ..registerFactory<IKittyFactsApiRepository>(
      () => KittyFactsApiRepository(
        kittyFactsApiClient: locator(),
        kittyImageApiRepository: locator(),
      ),
    )
    ..registerLazySingleton<IKittyFactsRepository>(
      () => KittyFactsRepository(
        localRepository: locator(),
        apiRepository: locator(),
      ),
    )
    ..registerLazySingleton(
      () => KittyRandomFactBloc(
        kittyFactsRepository: locator(),
        imagePrecacher: locator(),
      ),
    )
    ..registerLazySingleton(
      () => KittyHistoryFactsCubit(
        kittyFactsRepository: locator(),
      ),
    );
}
