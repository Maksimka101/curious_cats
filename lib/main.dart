import 'package:curious_cats/app.dart';
import 'package:curious_cats/domain/app_config/app_config.dart';
import 'package:curious_cats/utils/hive_utils.dart';
import 'package:curious_cats/utils/service_locator/configure_dependencies.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  configureDependencies(
    const AppConfig(
      factsBaseUrl: 'https://cat-fact.herokuapp.com',
      kittyImageBaseUrl: 'https://api.thecatapi.com',
      kittyImageApiKey: '9bfe80cf-c9e2-400c-806a-fa34ad91534c',
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await initializeHive();

  runApp(const App());
}
