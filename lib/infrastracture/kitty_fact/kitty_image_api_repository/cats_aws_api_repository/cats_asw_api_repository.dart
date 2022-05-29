import 'package:curious_cats/domain/kitty_fact/repositories/i_kitty_image_api_repository.dart';
import 'package:curious_cats/utils/logger/logger.dart';
import 'package:curious_cats/utils/typedefs.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'cats_asw_api_repository.g.dart';
part 'dtos.dart';

class CatsAwsApiRepository extends IKittyImageApiRepository {
  CatsAwsApiRepository({required this.kittyImageApiClient});

  final CatsAwsApiClient kittyImageApiClient;

  @override
  Future<Either<KittyImageLoadFailure, String>> loadKittyImage() async {
    try {
      final kittyImage = await kittyImageApiClient.fetchKittyImage();
      return Right(kittyImage.file);
    } catch (e, st) {
      logError(e, st, "Failed to load kitty image from cats aws api");
      return const Left(KittyImageLoadFailure());
    }
  }
}

@RestApi()
abstract class CatsAwsApiClient {
  factory CatsAwsApiClient(Dio dio, {String baseUrl}) = _CatsAwsApiClient;

  @GET("/meow")
  Future<_KittyImage> fetchKittyImage();
}
