// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignedInUser {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get displayName => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignedInUserCopyWith<SignedInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedInUserCopyWith<$Res> {
  factory $SignedInUserCopyWith(
          SignedInUser value, $Res Function(SignedInUser) then) =
      _$SignedInUserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, StringSingleLine displayName, EmailAddress emailAddress});
}

/// @nodoc
class _$SignedInUserCopyWithImpl<$Res> implements $SignedInUserCopyWith<$Res> {
  _$SignedInUserCopyWithImpl(this._value, this._then);

  final SignedInUser _value;
  // ignore: unused_field
  final $Res Function(SignedInUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc
abstract class _$$_SignedInUserCopyWith<$Res>
    implements $SignedInUserCopyWith<$Res> {
  factory _$$_SignedInUserCopyWith(
          _$_SignedInUser value, $Res Function(_$_SignedInUser) then) =
      __$$_SignedInUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, StringSingleLine displayName, EmailAddress emailAddress});
}

/// @nodoc
class __$$_SignedInUserCopyWithImpl<$Res>
    extends _$SignedInUserCopyWithImpl<$Res>
    implements _$$_SignedInUserCopyWith<$Res> {
  __$$_SignedInUserCopyWithImpl(
      _$_SignedInUser _value, $Res Function(_$_SignedInUser) _then)
      : super(_value, (v) => _then(v as _$_SignedInUser));

  @override
  _$_SignedInUser get _value => super._value as _$_SignedInUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_$_SignedInUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$_SignedInUser implements _SignedInUser {
  const _$_SignedInUser(
      {required this.id,
      required this.displayName,
      required this.emailAddress});

  @override
  final UniqueId id;
  @override
  final StringSingleLine displayName;
  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'SignedInUser(id: $id, displayName: $displayName, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedInUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(emailAddress));

  @JsonKey(ignore: true)
  @override
  _$$_SignedInUserCopyWith<_$_SignedInUser> get copyWith =>
      __$$_SignedInUserCopyWithImpl<_$_SignedInUser>(this, _$identity);
}

abstract class _SignedInUser implements SignedInUser {
  const factory _SignedInUser(
      {required final UniqueId id,
      required final StringSingleLine displayName,
      required final EmailAddress emailAddress}) = _$_SignedInUser;

  @override
  UniqueId get id;
  @override
  StringSingleLine get displayName;
  @override
  EmailAddress get emailAddress;
  @override
  @JsonKey(ignore: true)
  _$$_SignedInUserCopyWith<_$_SignedInUser> get copyWith =>
      throw _privateConstructorUsedError;
}
