// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spliter_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpliterFailure {
  String? get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpliterFailureCopyWith<SpliterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpliterFailureCopyWith<$Res> {
  factory $SpliterFailureCopyWith(
          SpliterFailure value, $Res Function(SpliterFailure) then) =
      _$SpliterFailureCopyWithImpl<$Res>;
  $Res call({String? failedValue});
}

/// @nodoc
class _$SpliterFailureCopyWithImpl<$Res>
    implements $SpliterFailureCopyWith<$Res> {
  _$SpliterFailureCopyWithImpl(this._value, this._then);

  final SpliterFailure _value;
  // ignore: unused_field
  final $Res Function(SpliterFailure) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$EmptyCopyWith<$Res> implements $SpliterFailureCopyWith<$Res> {
  factory _$$EmptyCopyWith(_$Empty value, $Res Function(_$Empty) then) =
      __$$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<$Res> extends _$SpliterFailureCopyWithImpl<$Res>
    implements _$$EmptyCopyWith<$Res> {
  __$$EmptyCopyWithImpl(_$Empty _value, $Res Function(_$Empty) _then)
      : super(_value, (v) => _then(v as _$Empty));

  @override
  _$Empty get _value => super._value as _$Empty;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'SpliterFailure.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<_$Empty> get copyWith =>
      __$$EmptyCopyWithImpl<_$Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements SpliterFailure {
  const factory Empty({final String? failedValue}) = _$Empty;

  @override
  String? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<_$Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsuffientPermissionCopyWith<$Res>
    implements $SpliterFailureCopyWith<$Res> {
  factory _$$InsuffientPermissionCopyWith(_$InsuffientPermission value,
          $Res Function(_$InsuffientPermission) then) =
      __$$InsuffientPermissionCopyWithImpl<$Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$InsuffientPermissionCopyWithImpl<$Res>
    extends _$SpliterFailureCopyWithImpl<$Res>
    implements _$$InsuffientPermissionCopyWith<$Res> {
  __$$InsuffientPermissionCopyWithImpl(_$InsuffientPermission _value,
      $Res Function(_$InsuffientPermission) _then)
      : super(_value, (v) => _then(v as _$InsuffientPermission));

  @override
  _$InsuffientPermission get _value => super._value as _$InsuffientPermission;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InsuffientPermission(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InsuffientPermission implements InsuffientPermission {
  const _$InsuffientPermission({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'SpliterFailure.insuffientPermission(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuffientPermission &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InsuffientPermissionCopyWith<_$InsuffientPermission> get copyWith =>
      __$$InsuffientPermissionCopyWithImpl<_$InsuffientPermission>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) {
    return insuffientPermission(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) {
    return insuffientPermission?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) {
    if (insuffientPermission != null) {
      return insuffientPermission(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) {
    return insuffientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) {
    return insuffientPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) {
    if (insuffientPermission != null) {
      return insuffientPermission(this);
    }
    return orElse();
  }
}

abstract class InsuffientPermission implements SpliterFailure {
  const factory InsuffientPermission({final String? failedValue}) =
      _$InsuffientPermission;

  @override
  String? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InsuffientPermissionCopyWith<_$InsuffientPermission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res>
    implements $SpliterFailureCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res>
    extends _$SpliterFailureCopyWithImpl<$Res>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, (v) => _then(v as _$Unexpected));

  @override
  _$Unexpected get _value => super._value as _$Unexpected;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Unexpected(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'SpliterFailure.unexpected(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unexpected &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      __$$UnexpectedCopyWithImpl<_$Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) {
    return unexpected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) {
    return unexpected?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements SpliterFailure {
  const factory Unexpected({final String? failedValue}) = _$Unexpected;

  @override
  String? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnabletoCreateCopyWith<$Res>
    implements $SpliterFailureCopyWith<$Res> {
  factory _$$UnabletoCreateCopyWith(
          _$UnabletoCreate value, $Res Function(_$UnabletoCreate) then) =
      __$$UnabletoCreateCopyWithImpl<$Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$UnabletoCreateCopyWithImpl<$Res>
    extends _$SpliterFailureCopyWithImpl<$Res>
    implements _$$UnabletoCreateCopyWith<$Res> {
  __$$UnabletoCreateCopyWithImpl(
      _$UnabletoCreate _value, $Res Function(_$UnabletoCreate) _then)
      : super(_value, (v) => _then(v as _$UnabletoCreate));

  @override
  _$UnabletoCreate get _value => super._value as _$UnabletoCreate;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$UnabletoCreate(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnabletoCreate implements UnabletoCreate {
  const _$UnabletoCreate({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'SpliterFailure.unabletoCreate(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnabletoCreate &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$UnabletoCreateCopyWith<_$UnabletoCreate> get copyWith =>
      __$$UnabletoCreateCopyWithImpl<_$UnabletoCreate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) {
    return unabletoCreate(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) {
    return unabletoCreate?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unabletoCreate != null) {
      return unabletoCreate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) {
    return unabletoCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) {
    return unabletoCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unabletoCreate != null) {
      return unabletoCreate(this);
    }
    return orElse();
  }
}

abstract class UnabletoCreate implements SpliterFailure {
  const factory UnabletoCreate({final String? failedValue}) = _$UnabletoCreate;

  @override
  String? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$UnabletoCreateCopyWith<_$UnabletoCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnabletoUpdateCopyWith<$Res>
    implements $SpliterFailureCopyWith<$Res> {
  factory _$$UnabletoUpdateCopyWith(
          _$UnabletoUpdate value, $Res Function(_$UnabletoUpdate) then) =
      __$$UnabletoUpdateCopyWithImpl<$Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$UnabletoUpdateCopyWithImpl<$Res>
    extends _$SpliterFailureCopyWithImpl<$Res>
    implements _$$UnabletoUpdateCopyWith<$Res> {
  __$$UnabletoUpdateCopyWithImpl(
      _$UnabletoUpdate _value, $Res Function(_$UnabletoUpdate) _then)
      : super(_value, (v) => _then(v as _$UnabletoUpdate));

  @override
  _$UnabletoUpdate get _value => super._value as _$UnabletoUpdate;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$UnabletoUpdate(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnabletoUpdate implements UnabletoUpdate {
  const _$UnabletoUpdate({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'SpliterFailure.unabletoUpdate(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnabletoUpdate &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$UnabletoUpdateCopyWith<_$UnabletoUpdate> get copyWith =>
      __$$UnabletoUpdateCopyWithImpl<_$UnabletoUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) {
    return unabletoUpdate(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) {
    return unabletoUpdate?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unabletoUpdate != null) {
      return unabletoUpdate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) {
    return unabletoUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) {
    return unabletoUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unabletoUpdate != null) {
      return unabletoUpdate(this);
    }
    return orElse();
  }
}

abstract class UnabletoUpdate implements SpliterFailure {
  const factory UnabletoUpdate({final String? failedValue}) = _$UnabletoUpdate;

  @override
  String? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$UnabletoUpdateCopyWith<_$UnabletoUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnabletoDeleteCopyWith<$Res>
    implements $SpliterFailureCopyWith<$Res> {
  factory _$$UnabletoDeleteCopyWith(
          _$UnabletoDelete value, $Res Function(_$UnabletoDelete) then) =
      __$$UnabletoDeleteCopyWithImpl<$Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$UnabletoDeleteCopyWithImpl<$Res>
    extends _$SpliterFailureCopyWithImpl<$Res>
    implements _$$UnabletoDeleteCopyWith<$Res> {
  __$$UnabletoDeleteCopyWithImpl(
      _$UnabletoDelete _value, $Res Function(_$UnabletoDelete) _then)
      : super(_value, (v) => _then(v as _$UnabletoDelete));

  @override
  _$UnabletoDelete get _value => super._value as _$UnabletoDelete;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$UnabletoDelete(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnabletoDelete implements UnabletoDelete {
  const _$UnabletoDelete({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'SpliterFailure.unabletoDelete(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnabletoDelete &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$UnabletoDeleteCopyWith<_$UnabletoDelete> get copyWith =>
      __$$UnabletoDeleteCopyWithImpl<_$UnabletoDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) {
    return unabletoDelete(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) {
    return unabletoDelete?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unabletoDelete != null) {
      return unabletoDelete(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) {
    return unabletoDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) {
    return unabletoDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) {
    if (unabletoDelete != null) {
      return unabletoDelete(this);
    }
    return orElse();
  }
}

abstract class UnabletoDelete implements SpliterFailure {
  const factory UnabletoDelete({final String? failedValue}) = _$UnabletoDelete;

  @override
  String? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$UnabletoDeleteCopyWith<_$UnabletoDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidGroupCopyWith<$Res>
    implements $SpliterFailureCopyWith<$Res> {
  factory _$$InvalidGroupCopyWith(
          _$InvalidGroup value, $Res Function(_$InvalidGroup) then) =
      __$$InvalidGroupCopyWithImpl<$Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$InvalidGroupCopyWithImpl<$Res>
    extends _$SpliterFailureCopyWithImpl<$Res>
    implements _$$InvalidGroupCopyWith<$Res> {
  __$$InvalidGroupCopyWithImpl(
      _$InvalidGroup _value, $Res Function(_$InvalidGroup) _then)
      : super(_value, (v) => _then(v as _$InvalidGroup));

  @override
  _$InvalidGroup get _value => super._value as _$InvalidGroup;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidGroup(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidGroup implements InvalidGroup {
  const _$InvalidGroup({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'SpliterFailure.invalidGroup(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidGroup &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidGroupCopyWith<_$InvalidGroup> get copyWith =>
      __$$InvalidGroupCopyWithImpl<_$InvalidGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) empty,
    required TResult Function(String? failedValue) insuffientPermission,
    required TResult Function(String? failedValue) unexpected,
    required TResult Function(String? failedValue) unabletoCreate,
    required TResult Function(String? failedValue) unabletoUpdate,
    required TResult Function(String? failedValue) unabletoDelete,
    required TResult Function(String? failedValue) invalidGroup,
  }) {
    return invalidGroup(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
  }) {
    return invalidGroup?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? empty,
    TResult Function(String? failedValue)? insuffientPermission,
    TResult Function(String? failedValue)? unexpected,
    TResult Function(String? failedValue)? unabletoCreate,
    TResult Function(String? failedValue)? unabletoUpdate,
    TResult Function(String? failedValue)? unabletoDelete,
    TResult Function(String? failedValue)? invalidGroup,
    required TResult orElse(),
  }) {
    if (invalidGroup != null) {
      return invalidGroup(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(InsuffientPermission value) insuffientPermission,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UnabletoCreate value) unabletoCreate,
    required TResult Function(UnabletoUpdate value) unabletoUpdate,
    required TResult Function(UnabletoDelete value) unabletoDelete,
    required TResult Function(InvalidGroup value) invalidGroup,
  }) {
    return invalidGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
  }) {
    return invalidGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(InsuffientPermission value)? insuffientPermission,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UnabletoCreate value)? unabletoCreate,
    TResult Function(UnabletoUpdate value)? unabletoUpdate,
    TResult Function(UnabletoDelete value)? unabletoDelete,
    TResult Function(InvalidGroup value)? invalidGroup,
    required TResult orElse(),
  }) {
    if (invalidGroup != null) {
      return invalidGroup(this);
    }
    return orElse();
  }
}

abstract class InvalidGroup implements SpliterFailure {
  const factory InvalidGroup({final String? failedValue}) = _$InvalidGroup;

  @override
  String? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidGroupCopyWith<_$InvalidGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
