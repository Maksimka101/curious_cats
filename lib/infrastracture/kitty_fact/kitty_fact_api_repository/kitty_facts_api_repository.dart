import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/failure.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_facts_api_repository.dart';
import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_image_api_repository.dart';
import 'package:curious_cats/infrastracture/kitty_fact/kitty_fact_api_repository/kitty_fact_dto.dart';
import 'package:curious_cats/utils/logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrofit/retrofit.dart';

part 'kitty_facts_api_repository.g.dart';

class KittyFactsApiRepository extends IKittyFactsApiRepository {
  KittyFactsApiRepository({
    required this.kittyFactsApiClient,
    required this.kittyImageApiRepository,
    this.fallbackKittyImage,
  });

  final KittyFactsApiClient kittyFactsApiClient;
  final IKittyImageApiRepository kittyImageApiRepository;
  final String? fallbackKittyImage;

  @override
  Future<Either<KittyFactLoadFailure, KittyFact>> loadRandomFact() async {
    try {
      final factDto = await kittyFactsApiClient.fetchKittyFact();
      final imageResponse = await kittyImageApiRepository.loadKittyImage();
      String? factPreviewImageUrl;
      for (var i = 0; i < 4; i++) {
        factPreviewImageUrl = imageResponse.toOption().toNullable();
        if (factPreviewImageUrl != null) {
          break;
        }
      }

      return Right(factDto.toEntity(factPreviewImageUrl));
    } catch (e, st) {
      logError(e, st, "Failed to load random fact from api");
      return const Left(KittyFactLoadFailure());
    }
  }
}

@RestApi()
abstract class KittyFactsApiClient {
  factory KittyFactsApiClient(Dio dio, {String baseUrl}) = _KittyFactsApiClient;

  @GET('/facts/random')
  Future<KittyFactDto> fetchKittyFact();
}
