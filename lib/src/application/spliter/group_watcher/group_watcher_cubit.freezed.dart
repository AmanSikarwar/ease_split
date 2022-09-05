// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(SpliterFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IInitial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupLoaded value) groupLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupWatcherStateCopyWith<$Res> {
  factory $GroupWatcherStateCopyWith(
          GroupWatcherState value, $Res Function(GroupWatcherState) then) =
      _$GroupWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupWatcherStateCopyWithImpl<$Res>
    implements $GroupWatcherStateCopyWith<$Res> {
  _$GroupWatcherStateCopyWithImpl(this._value, this._then);

  final GroupWatcherState _value;
  // ignore: unused_field
  final $Res Function(GroupWatcherState) _then;
}

/// @nodoc
abstract class _$$IInitialCopyWith<$Res> {
  factory _$$IInitialCopyWith(
          _$IInitial value, $Res Function(_$IInitial) then) =
      __$$IInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IInitialCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$IInitialCopyWith<$Res> {
  __$$IInitialCopyWithImpl(_$IInitial _value, $Res Function(_$IInitial) _then)
      : super(_value, (v) => _then(v as _$IInitial));

  @override
  _$IInitial get _value => super._value as _$IInitial;
}

/// @nodoc

class _$IInitial implements IInitial {
  const _$IInitial();

  @override
  String toString() {
    return 'GroupWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(SpliterFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
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
    required TResult Function(IInitial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupLoaded value) groupLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class IInitial implements GroupWatcherState {
  const factory IInitial() = _$IInitial;
}

/// @nodoc
abstract class _$$LoadInProgressCopyWith<$Res> {
  factory _$$LoadInProgressCopyWith(
          _$LoadInProgress value, $Res Function(_$LoadInProgress) then) =
      __$$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
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
    return 'GroupWatcherState.loadInProgress()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(SpliterFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
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
    required TResult Function(IInitial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupLoaded value) groupLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements GroupWatcherState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class _$$GroupsLoadedCopyWith<$Res> {
  factory _$$GroupsLoadedCopyWith(
          _$GroupsLoaded value, $Res Function(_$GroupsLoaded) then) =
      __$$GroupsLoadedCopyWithImpl<$Res>;
  $Res call({List<Group> groups});
}

/// @nodoc
class __$$GroupsLoadedCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$GroupsLoadedCopyWith<$Res> {
  __$$GroupsLoadedCopyWithImpl(
      _$GroupsLoaded _value, $Res Function(_$GroupsLoaded) _then)
      : super(_value, (v) => _then(v as _$GroupsLoaded));

  @override
  _$GroupsLoaded get _value => super._value as _$GroupsLoaded;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_$GroupsLoaded(
      groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$GroupsLoaded implements GroupsLoaded {
  const _$GroupsLoaded(final List<Group> groups) : _groups = groups;

  final List<Group> _groups;
  @override
  List<Group> get groups {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'GroupWatcherState.groupsLoaded(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsLoaded &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  _$$GroupsLoadedCopyWith<_$GroupsLoaded> get copyWith =>
      __$$GroupsLoadedCopyWithImpl<_$GroupsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(SpliterFailure failure) loadFailure,
  }) {
    return groupsLoaded(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
  }) {
    return groupsLoaded?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (groupsLoaded != null) {
      return groupsLoaded(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IInitial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupLoaded value) groupLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return groupsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return groupsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (groupsLoaded != null) {
      return groupsLoaded(this);
    }
    return orElse();
  }
}

abstract class GroupsLoaded implements GroupWatcherState {
  const factory GroupsLoaded(final List<Group> groups) = _$GroupsLoaded;

  List<Group> get groups;
  @JsonKey(ignore: true)
  _$$GroupsLoadedCopyWith<_$GroupsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupLoadedCopyWith<$Res> {
  factory _$$GroupLoadedCopyWith(
          _$GroupLoaded value, $Res Function(_$GroupLoaded) then) =
      __$$GroupLoadedCopyWithImpl<$Res>;
  $Res call({Group group});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupLoadedCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$GroupLoadedCopyWith<$Res> {
  __$$GroupLoadedCopyWithImpl(
      _$GroupLoaded _value, $Res Function(_$GroupLoaded) _then)
      : super(_value, (v) => _then(v as _$GroupLoaded));

  @override
  _$GroupLoaded get _value => super._value as _$GroupLoaded;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_$GroupLoaded(
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }

  @override
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$GroupLoaded implements GroupLoaded {
  const _$GroupLoaded(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupWatcherState.groupLoaded(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupLoaded &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  _$$GroupLoadedCopyWith<_$GroupLoaded> get copyWith =>
      __$$GroupLoadedCopyWithImpl<_$GroupLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(SpliterFailure failure) loadFailure,
  }) {
    return groupLoaded(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
  }) {
    return groupLoaded?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (groupLoaded != null) {
      return groupLoaded(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IInitial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupLoaded value) groupLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return groupLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return groupLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (groupLoaded != null) {
      return groupLoaded(this);
    }
    return orElse();
  }
}

abstract class GroupLoaded implements GroupWatcherState {
  const factory GroupLoaded(final Group group) = _$GroupLoaded;

  Group get group;
  @JsonKey(ignore: true)
  _$$GroupLoadedCopyWith<_$GroupLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureCopyWith<$Res> {
  factory _$$LoadFailureCopyWith(
          _$LoadFailure value, $Res Function(_$LoadFailure) then) =
      __$$LoadFailureCopyWithImpl<$Res>;
  $Res call({SpliterFailure failure});

  $SpliterFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureCopyWithImpl<$Res>
    extends _$GroupWatcherStateCopyWithImpl<$Res>
    implements _$$LoadFailureCopyWith<$Res> {
  __$$LoadFailureCopyWithImpl(
      _$LoadFailure _value, $Res Function(_$LoadFailure) _then)
      : super(_value, (v) => _then(v as _$LoadFailure));

  @override
  _$LoadFailure get _value => super._value as _$LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SpliterFailure,
    ));
  }

  @override
  $SpliterFailureCopyWith<$Res> get failure {
    return $SpliterFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure);

  @override
  final SpliterFailure failure;

  @override
  String toString() {
    return 'GroupWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      __$$LoadFailureCopyWithImpl<_$LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Group> groups) groupsLoaded,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(SpliterFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Group> groups)? groupsLoaded,
    TResult Function(Group group)? groupLoaded,
    TResult Function(SpliterFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IInitial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(GroupsLoaded value) groupsLoaded,
    required TResult Function(GroupLoaded value) groupLoaded,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IInitial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(GroupsLoaded value)? groupsLoaded,
    TResult Function(GroupLoaded value)? groupLoaded,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements GroupWatcherState {
  const factory LoadFailure(final SpliterFailure failure) = _$LoadFailure;

  SpliterFailure get failure;
  @JsonKey(ignore: true)
  _$$LoadFailureCopyWith<_$LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
