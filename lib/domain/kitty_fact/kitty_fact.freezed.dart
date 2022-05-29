// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kitty_fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KittyFact {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KittyFactCopyWith<KittyFact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KittyFactCopyWith<$Res> {
  factory $KittyFactCopyWith(KittyFact value, $Res Function(KittyFact) then) =
      _$KittyFactCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String text,
      @HiveField(2) DateTime createdAt,
      @HiveField(3) String? imageUrl});
}

/// @nodoc
class _$KittyFactCopyWithImpl<$Res> implements $KittyFactCopyWith<$Res> {
  _$KittyFactCopyWithImpl(this._value, this._then);

  final KittyFact _value;
  // ignore: unused_field
  final $Res Function(KittyFact) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_KittyFactCopyWith<$Res> implements $KittyFactCopyWith<$Res> {
  factory _$$_KittyFactCopyWith(
          _$_KittyFact value, $Res Function(_$_KittyFact) then) =
      __$$_KittyFactCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String text,
      @HiveField(2) DateTime createdAt,
      @HiveField(3) String? imageUrl});
}

/// @nodoc
class __$$_KittyFactCopyWithImpl<$Res> extends _$KittyFactCopyWithImpl<$Res>
    implements _$$_KittyFactCopyWith<$Res> {
  __$$_KittyFactCopyWithImpl(
      _$_KittyFact _value, $Res Function(_$_KittyFact) _then)
      : super(_value, (v) => _then(v as _$_KittyFact));

  @override
  _$_KittyFact get _value => super._value as _$_KittyFact;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_KittyFact(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_KittyFact implements _KittyFact {
  const _$_KittyFact(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.text,
      @HiveField(2) required this.createdAt,
      @HiveField(3) required this.imageUrl});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String text;
  @override
  @HiveField(2)
  final DateTime createdAt;
  @override
  @HiveField(3)
  final String? imageUrl;

  @override
  String toString() {
    return 'KittyFact(id: $id, text: $text, createdAt: $createdAt, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KittyFact &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_KittyFactCopyWith<_$_KittyFact> get copyWith =>
      __$$_KittyFactCopyWithImpl<_$_KittyFact>(this, _$identity);
}

abstract class _KittyFact implements KittyFact {
  const factory _KittyFact(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String text,
      @HiveField(2) required final DateTime createdAt,
      @HiveField(3) required final String? imageUrl}) = _$_KittyFact;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_KittyFactCopyWith<_$_KittyFact> get copyWith =>
      throw _privateConstructorUsedError;
}
