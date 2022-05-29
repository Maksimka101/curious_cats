// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kitty_random_fact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KittyRandomFactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() factLoadingInProgress,
    required TResult Function(KittyFact fact) factLoaded,
    required TResult Function() failedToLoadFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FactLoadingInProgress value)
        factLoadingInProgress,
    required TResult Function(_FactLoaded value) factLoaded,
    required TResult Function(_FailedToLoadFact value) failedToLoadFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KittyRandomFactStateCopyWith<$Res> {
  factory $KittyRandomFactStateCopyWith(KittyRandomFactState value,
          $Res Function(KittyRandomFactState) then) =
      _$KittyRandomFactStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$KittyRandomFactStateCopyWithImpl<$Res>
    implements $KittyRandomFactStateCopyWith<$Res> {
  _$KittyRandomFactStateCopyWithImpl(this._value, this._then);

  final KittyRandomFactState _value;
  // ignore: unused_field
  final $Res Function(KittyRandomFactState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$KittyRandomFactStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'KittyRandomFactState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() factLoadingInProgress,
    required TResult Function(KittyFact fact) factLoaded,
    required TResult Function() failedToLoadFact,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FactLoadingInProgress value)
        factLoadingInProgress,
    required TResult Function(_FactLoaded value) factLoaded,
    required TResult Function(_FailedToLoadFact value) failedToLoadFact,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements KittyRandomFactState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FactLoadingInProgressCopyWith<$Res> {
  factory _$$_FactLoadingInProgressCopyWith(_$_FactLoadingInProgress value,
          $Res Function(_$_FactLoadingInProgress) then) =
      __$$_FactLoadingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FactLoadingInProgressCopyWithImpl<$Res>
    extends _$KittyRandomFactStateCopyWithImpl<$Res>
    implements _$$_FactLoadingInProgressCopyWith<$Res> {
  __$$_FactLoadingInProgressCopyWithImpl(_$_FactLoadingInProgress _value,
      $Res Function(_$_FactLoadingInProgress) _then)
      : super(_value, (v) => _then(v as _$_FactLoadingInProgress));

  @override
  _$_FactLoadingInProgress get _value =>
      super._value as _$_FactLoadingInProgress;
}

/// @nodoc

class _$_FactLoadingInProgress implements _FactLoadingInProgress {
  const _$_FactLoadingInProgress();

  @override
  String toString() {
    return 'KittyRandomFactState.factLoadingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FactLoadingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() factLoadingInProgress,
    required TResult Function(KittyFact fact) factLoaded,
    required TResult Function() failedToLoadFact,
  }) {
    return factLoadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
  }) {
    return factLoadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (factLoadingInProgress != null) {
      return factLoadingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FactLoadingInProgress value)
        factLoadingInProgress,
    required TResult Function(_FactLoaded value) factLoaded,
    required TResult Function(_FailedToLoadFact value) failedToLoadFact,
  }) {
    return factLoadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
  }) {
    return factLoadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (factLoadingInProgress != null) {
      return factLoadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _FactLoadingInProgress implements KittyRandomFactState {
  const factory _FactLoadingInProgress() = _$_FactLoadingInProgress;
}

/// @nodoc
abstract class _$$_FactLoadedCopyWith<$Res> {
  factory _$$_FactLoadedCopyWith(
          _$_FactLoaded value, $Res Function(_$_FactLoaded) then) =
      __$$_FactLoadedCopyWithImpl<$Res>;
  $Res call({KittyFact fact});

  $KittyFactCopyWith<$Res> get fact;
}

/// @nodoc
class __$$_FactLoadedCopyWithImpl<$Res>
    extends _$KittyRandomFactStateCopyWithImpl<$Res>
    implements _$$_FactLoadedCopyWith<$Res> {
  __$$_FactLoadedCopyWithImpl(
      _$_FactLoaded _value, $Res Function(_$_FactLoaded) _then)
      : super(_value, (v) => _then(v as _$_FactLoaded));

  @override
  _$_FactLoaded get _value => super._value as _$_FactLoaded;

  @override
  $Res call({
    Object? fact = freezed,
  }) {
    return _then(_$_FactLoaded(
      fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as KittyFact,
    ));
  }

  @override
  $KittyFactCopyWith<$Res> get fact {
    return $KittyFactCopyWith<$Res>(_value.fact, (value) {
      return _then(_value.copyWith(fact: value));
    });
  }
}

/// @nodoc

class _$_FactLoaded implements _FactLoaded {
  const _$_FactLoaded(this.fact);

  @override
  final KittyFact fact;

  @override
  String toString() {
    return 'KittyRandomFactState.factLoaded(fact: $fact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FactLoaded &&
            const DeepCollectionEquality().equals(other.fact, fact));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fact));

  @JsonKey(ignore: true)
  @override
  _$$_FactLoadedCopyWith<_$_FactLoaded> get copyWith =>
      __$$_FactLoadedCopyWithImpl<_$_FactLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() factLoadingInProgress,
    required TResult Function(KittyFact fact) factLoaded,
    required TResult Function() failedToLoadFact,
  }) {
    return factLoaded(fact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
  }) {
    return factLoaded?.call(fact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (factLoaded != null) {
      return factLoaded(fact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FactLoadingInProgress value)
        factLoadingInProgress,
    required TResult Function(_FactLoaded value) factLoaded,
    required TResult Function(_FailedToLoadFact value) failedToLoadFact,
  }) {
    return factLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
  }) {
    return factLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (factLoaded != null) {
      return factLoaded(this);
    }
    return orElse();
  }
}

abstract class _FactLoaded implements KittyRandomFactState {
  const factory _FactLoaded(final KittyFact fact) = _$_FactLoaded;

  KittyFact get fact => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FactLoadedCopyWith<_$_FactLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedToLoadFactCopyWith<$Res> {
  factory _$$_FailedToLoadFactCopyWith(
          _$_FailedToLoadFact value, $Res Function(_$_FailedToLoadFact) then) =
      __$$_FailedToLoadFactCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedToLoadFactCopyWithImpl<$Res>
    extends _$KittyRandomFactStateCopyWithImpl<$Res>
    implements _$$_FailedToLoadFactCopyWith<$Res> {
  __$$_FailedToLoadFactCopyWithImpl(
      _$_FailedToLoadFact _value, $Res Function(_$_FailedToLoadFact) _then)
      : super(_value, (v) => _then(v as _$_FailedToLoadFact));

  @override
  _$_FailedToLoadFact get _value => super._value as _$_FailedToLoadFact;
}

/// @nodoc

class _$_FailedToLoadFact implements _FailedToLoadFact {
  const _$_FailedToLoadFact();

  @override
  String toString() {
    return 'KittyRandomFactState.failedToLoadFact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailedToLoadFact);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() factLoadingInProgress,
    required TResult Function(KittyFact fact) factLoaded,
    required TResult Function() failedToLoadFact,
  }) {
    return failedToLoadFact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
  }) {
    return failedToLoadFact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? factLoadingInProgress,
    TResult Function(KittyFact fact)? factLoaded,
    TResult Function()? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (failedToLoadFact != null) {
      return failedToLoadFact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FactLoadingInProgress value)
        factLoadingInProgress,
    required TResult Function(_FactLoaded value) factLoaded,
    required TResult Function(_FailedToLoadFact value) failedToLoadFact,
  }) {
    return failedToLoadFact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
  }) {
    return failedToLoadFact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FactLoadingInProgress value)? factLoadingInProgress,
    TResult Function(_FactLoaded value)? factLoaded,
    TResult Function(_FailedToLoadFact value)? failedToLoadFact,
    required TResult orElse(),
  }) {
    if (failedToLoadFact != null) {
      return failedToLoadFact(this);
    }
    return orElse();
  }
}

abstract class _FailedToLoadFact implements KittyRandomFactState {
  const factory _FailedToLoadFact() = _$_FailedToLoadFact;
}
