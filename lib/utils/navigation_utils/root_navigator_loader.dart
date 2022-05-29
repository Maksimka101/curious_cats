import 'package:curious_cats/utils/service_locator/service_locator.dart';
import 'package:flutter/widgets.dart';

NavigatorState loadRootNavigator() {
  return locator<GlobalKey<NavigatorState>>().currentState!;
}

BuildContext loadRootContext() {
  return loadRootNavigator().context;
}
