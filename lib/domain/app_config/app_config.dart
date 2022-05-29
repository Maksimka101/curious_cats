import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';

@freezed
class AppConfig with _$AppConfig {
  const factory AppConfig({
    required String factsBaseUrl,
    required String kittyImageBaseUrl,
    required String kittyImageApiKey,
  }) = _AppConfig;
}
