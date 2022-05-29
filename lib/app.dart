import 'package:curious_cats/generated/localization/localization.dart';
import 'package:curious_cats/presentation/design_system/layouts/flexible_layout.dart';
import 'package:curious_cats/presentation/design_system/theme/kitty_theme.dart';
import 'package:curious_cats/presentation/loading_screen/loading_screen.dart';
import 'package:curious_cats/utils/service_locator/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: locator(),
      localizationsDelegates: const [
        Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Localization.delegate.supportedLocales,
      builder: (context, child) => FlexibleLayout(child: child ?? const SizedBox.shrink()),
      theme: kittyTheme,
      home: const LoadingScreen(),
    );
  }
}
