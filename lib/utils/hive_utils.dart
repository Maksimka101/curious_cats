import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<LazyBox<T>> openLazyBox<T>(String name) async {
  if (Hive.isBoxOpen(name)) {
    return Hive.lazyBox(name);
  } else {
    return Hive.openLazyBox(name);
  }
}

Future<Box<T>> openBox<T>(String name) async {
  if (Hive.isBoxOpen(name)) {
    return Hive.box(name);
  } else {
    return Hive.openBox(name);
  }
}

Future<void> initializeHive() async {
  if (!kIsWeb) {
    final docsDirectory = await getApplicationDocumentsDirectory();
    Hive.init(docsDirectory.path);
  }

  Hive.registerAdapter(KittyFactAdapter());
}
