import 'package:curious_cats/domain/app_config/app_config.dart';
import 'package:curious_cats/utils/typedefs.dart';
import 'package:dio/dio.dart';

Dio createFactsDio(AppConfig appConfig) {
  return createDio(appConfig.factsBaseUrl);
}

Dio createKittyImageDio(AppConfig appConfig) {
  return createDio(
    appConfig.kittyImageBaseUrl,
    headers: {
      'x-api-key': appConfig.kittyImageApiKey,
    },
  );
}

Dio createDio(String baseUrl, {Json? headers}) {
  return Dio(
    BaseOptions(baseUrl: baseUrl, headers: headers),
  );
}
