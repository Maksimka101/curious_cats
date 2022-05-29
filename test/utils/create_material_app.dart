import 'package:curious_cats/generated/localization/localization.dart';
import 'package:curious_cats/presentation/design_system/theme/kitty_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> createMaterialApp(WidgetTester tester, {required Widget child}) async {
  await tester.pumpWidget(
    MaterialApp(
      localizationsDelegates: const [
        Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Localization.delegate.supportedLocales,
      theme: kittyTheme,
      home: child,
    ),
  );

  await tester.pumpAndSettle();
}
