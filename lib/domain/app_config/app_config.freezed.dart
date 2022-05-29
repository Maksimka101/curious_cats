// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfig {
  String get factsBaseUrl => throw _privateConstructorUsedError;
  String get kittyImageBaseUrl => throw _privateConstructorUsedError;
  String get kittyImageApiKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res>;
  $Res call(
      {String factsBaseUrl, String kittyImageBaseUrl, String kittyImageApiKey});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  final AppConfig _value;
  // ignore: unused_field
  final $Res Function(AppConfig) _then;

  @override
  $Res call({
    Object? factsBaseUrl = freezed,
    Object? kittyImageBaseUrl = freezed,
    Object? kittyImageApiKey = freezed,
  }) {
    return _then(_value.copyWith(
      factsBaseUrl: factsBaseUrl == freezed
          ? _value.factsBaseUrl
          : factsBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      kittyImageBaseUrl: kittyImageBaseUrl == freezed
          ? _value.kittyImageBaseUrl
          : kittyImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      kittyImageApiKey: kittyImageApiKey == freezed
          ? _value.kittyImageApiKey
          : kittyImageApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$$_AppConfigCopyWith(
          _$_AppConfig value, $Res Function(_$_AppConfig) then) =
      __$$_AppConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {String factsBaseUrl, String kittyImageBaseUrl, String kittyImageApiKey});
}

/// @nodoc
class __$$_AppConfigCopyWithImpl<$Res> extends _$AppConfigCopyWithImpl<$Res>
    implements _$$_AppConfigCopyWith<$Res> {
  __$$_AppConfigCopyWithImpl(
      _$_AppConfig _value, $Res Function(_$_AppConfig) _then)
      : super(_value, (v) => _then(v as _$_AppConfig));

  @override
  _$_AppConfig get _value => super._value as _$_AppConfig;

  @override
  $Res call({
    Object? factsBaseUrl = freezed,
    Object? kittyImageBaseUrl = freezed,
    Object? kittyImageApiKey = freezed,
  }) {
    return _then(_$_AppConfig(
      factsBaseUrl: factsBaseUrl == freezed
          ? _value.factsBaseUrl
          : factsBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      kittyImageBaseUrl: kittyImageBaseUrl == freezed
          ? _value.kittyImageBaseUrl
          : kittyImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      kittyImageApiKey: kittyImageApiKey == freezed
          ? _value.kittyImageApiKey
          : kittyImageApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppConfig implements _AppConfig {
  const _$_AppConfig(
      {required this.factsBaseUrl,
      required this.kittyImageBaseUrl,
      required this.kittyImageApiKey});

  @override
  final String factsBaseUrl;
  @override
  final String kittyImageBaseUrl;
  @override
  final String kittyImageApiKey;

  @override
  String toString() {
    return 'AppConfig(factsBaseUrl: $factsBaseUrl, kittyImageBaseUrl: $kittyImageBaseUrl, kittyImageApiKey: $kittyImageApiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfig &&
            const DeepCollectionEquality()
                .equals(other.factsBaseUrl, factsBaseUrl) &&
            const DeepCollectionEquality()
                .equals(other.kittyImageBaseUrl, kittyImageBaseUrl) &&
            const DeepCollectionEquality()
                .equals(other.kittyImageApiKey, kittyImageApiKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(factsBaseUrl),
      const DeepCollectionEquality().hash(kittyImageBaseUrl),
      const DeepCollectionEquality().hash(kittyImageApiKey));

  @JsonKey(ignore: true)
  @override
  _$$_AppConfigCopyWith<_$_AppConfig> get copyWith =>
      __$$_AppConfigCopyWithImpl<_$_AppConfig>(this, _$identity);
}

abstract class _AppConfig implements AppConfig {
  const factory _AppConfig(
      {required final String factsBaseUrl,
      required final String kittyImageBaseUrl,
      required final String kittyImageApiKey}) = _$_AppConfig;

  @override
  String get factsBaseUrl => throw _privateConstructorUsedError;
  @override
  String get kittyImageBaseUrl => throw _privateConstructorUsedError;
  @override
  String get kittyImageApiKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigCopyWith<_$_AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
