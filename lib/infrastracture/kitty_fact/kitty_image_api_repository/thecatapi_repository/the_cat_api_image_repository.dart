import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_image_api_repository.dart';
import 'package:curious_cats/utils/logger/logger.dart';
import 'package:curious_cats/utils/typedefs.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'dtos.dart';
part 'the_cat_api_image_repository.g.dart';

class TheCatApiImageRepository extends IKittyImageApiRepository {
  TheCatApiImageRepository({required this.catApiImageClient});

  final TheCatApiImageClient catApiImageClient;

  @override
  Future<Either<KittyImageLoadFailure, String>> loadKittyImage() async {
    try {
      final imageResponse = await catApiImageClient.fetchKittyImage();
      return Right(imageResponse.single.url);
    } catch (e, st) {
      logError(e, st, "Failed to load image from the cat api");
      return const Left(KittyImageLoadFailure());
    }
  }
}

@RestApi()
abstract class TheCatApiImageClient {
  factory TheCatApiImageClient(Dio dio, {String baseUrl}) = _TheCatApiImageClient;

  @GET('/v1/images/search')
  Future<List<_KittyImage>> fetchKittyImage();
}
