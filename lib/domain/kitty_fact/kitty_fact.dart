import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'kitty_fact.freezed.dart';
part 'kitty_fact.g.dart';

// It is not very clean to bind Hive adapter to the entity, but I don't want to spend time on this.
@HiveType(typeId: 0)
@freezed
class KittyFact with _$KittyFact {
  const factory KittyFact({
    @HiveField(0) required String id,
    @HiveField(1) required String text,
    @HiveField(2) required DateTime createdAt,
    @HiveField(3) required String? imageUrl,
  }) = _KittyFact;
}
