import 'package:curious_cats/domain/kitty_fact/kitty_fact.dart';

extension FactsSortExtension on List<KittyFact> {
  List<KittyFact> sortedByDate() {
    return this..sort((a, b) => a.createdAt.compareTo(b.createdAt));
  }
}
