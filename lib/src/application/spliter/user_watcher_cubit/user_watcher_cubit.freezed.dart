// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchStarted,
    required TResult Function() loadInProgress,
    required TResult Function(SpliterUser user) loadSuccess,
    required TResult Function(SpliterFailure userFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWatcherStateCopyWith<$Res> {
  factory $UserWatcherStateCopyWith(
          UserWatcherState value, $Res Function(UserWatcherState) then) =
      _$UserWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserWatcherStateCopyWithImpl<$Res>
    implements $UserWatcherStateCopyWith<$Res> {
  _$UserWatcherStateCopyWithImpl(this._value, this._then);

  final UserWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserWatcherState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'UserWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchStarted,
    required TResult Function() loadInProgress,
    required TResult Function(SpliterUser user) loadSuccess,
    required TResult Function(SpliterFailure userFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserWatcherState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$WatchStartedCopyWith<$Res> {
  factory _$$WatchStartedCopyWith(
          _$WatchStarted value, $Res Function(_$WatchStarted) then) =
      __$$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchStartedCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$$WatchStartedCopyWith<$Res> {
  __$$WatchStartedCopyWithImpl(
      _$WatchStarted _value, $Res Function(_$WatchStarted) _then)
      : super(_value, (v) => _then(v as _$WatchStarted));

  @override
  _$WatchStarted get _value => super._value as _$WatchStarted;
}

/// @nodoc

class _$WatchStarted implements WatchStarted {
  const _$WatchStarted();

  @override
  String toString() {
    return 'UserWatcherState.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchStarted,
    required TResult Function() loadInProgress,
    required TResult Function(SpliterUser user) loadSuccess,
    required TResult Function(SpliterFailure userFailure) loadFailure,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
  }) {
    return watchStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return watchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements UserWatcherState {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class _$$LoadInProgressCopyWith<$Res> {
  factory _$$LoadInProgressCopyWith(
          _$LoadInProgress value, $Res Function(_$LoadInProgress) then) =
      __$$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$$LoadInProgressCopyWith<$Res> {
  __$$LoadInProgressCopyWithImpl(
      _$LoadInProgress _value, $Res Function(_$LoadInProgress) _then)
      : super(_value, (v) => _then(v as _$LoadInProgress));

  @override
  _$LoadInProgress get _value => super._value as _$LoadInProgress;
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'UserWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchStarted,
    required TResult Function() loadInProgress,
    required TResult Function(SpliterUser user) loadSuccess,
    required TResult Function(SpliterFailure userFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements UserWatcherState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class _$$LoadSuccessCopyWith<$Res> {
  factory _$$LoadSuccessCopyWith(
          _$LoadSuccess value, $Res Function(_$LoadSuccess) then) =
      __$$LoadSuccessCopyWithImpl<$Res>;
  $Res call({SpliterUser user});

  $SpliterUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadSuccessCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$$LoadSuccessCopyWith<$Res> {
  __$$LoadSuccessCopyWithImpl(
      _$LoadSuccess _value, $Res Function(_$LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$LoadSuccess));

  @override
  _$LoadSuccess get _value => super._value as _$LoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SpliterUser,
    ));
  }

  @override
  $SpliterUserCopyWith<$Res> get user {
    return $SpliterUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.user);

  @override
  final SpliterUser user;

  @override
  String toString() {
    return 'UserWatcherState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$LoadSuccessCopyWith<_$LoadSuccess> get copyWith =>
      __$$LoadSuccessCopyWithImpl<_$LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchStarted,
    required TResult Function() loadInProgress,
    required TResult Function(SpliterUser user) loadSuccess,
    required TResult Function(SpliterFailure userFailure) loadFailure,
  }) {
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
  }) {
    return loadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements UserWatcherState {
  const factory LoadSuccess(final SpliterUser user) = _$LoadSuccess;

  SpliterUser get user;
  @JsonKey(ignore: true)
  _$$LoadSuccessCopyWith<_$LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureCopyWith<$Res> {
  factory _$$LoadFailureCopyWith(
          _$LoadFailure value, $Res Function(_$LoadFailure) then) =
      __$$LoadFailureCopyWithImpl<$Res>;
  $Res call({SpliterFailure userFailure});

  $SpliterFailureCopyWith<$Res> get userFailure;
}

/// @nodoc
class __$$LoadFailureCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res>
    implements _$$LoadFailureCopyWith<$Res> {
  __$$LoadFailureCopyWithImpl(
      _$LoadFailure _value, $Res Function(_$LoadFailure) _then)
      : super(_value, (v) => _then(v as _$LoadFailure));

  @override
  _$LoadFailure get _value => super._value as _$LoadFailure;

  @override
  $Res call({
    Object? userFailure = freezed,
  }) {
    return _then(_$LoadFailure(
      userFailure == freezed
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as SpliterFailure,
    ));
  }

  @override
  $SpliterFailureCopyWith<$Res> get userFailure {
    return $SpliterFailureCopyWith<$Res>(_value.userFailure, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.userFailure);

  @override
  final SpliterFailure userFailure;

  @override
  String toString() {
    return 'UserWatcherState.loadFailure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.userFailure, userFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userFailure));

  @JsonKey(ignore: true)
  @override
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      __$$LoadFailureCopyWithImpl<_$LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() watchStarted,
    required TResult Function() loadInProgress,
    required TResult Function(SpliterUser user) loadSuccess,
    required TResult Function(SpliterFailure userFailure) loadFailure,
  }) {
    return loadFailure(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
  }) {
    return loadFailure?.call(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? watchStarted,
    TResult Function()? loadInProgress,
    TResult Function(SpliterUser user)? loadSuccess,
    TResult Function(SpliterFailure userFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(userFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements UserWatcherState {
  const factory LoadFailure(final SpliterFailure userFailure) = _$LoadFailure;

  SpliterFailure get userFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
