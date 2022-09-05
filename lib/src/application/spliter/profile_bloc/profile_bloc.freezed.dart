// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<SpliterFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress email,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<SpliterFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SpliterFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress email,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<SpliterFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ProfileState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SpliterFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.id,
      required this.name,
      required this.email,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress email;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<SpliterFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileState(id: $id, name: $name, email: $email, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final UniqueId id,
      required final StringSingleLine name,
      required final EmailAddress email,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final Option<Either<SpliterFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ProfileState;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  EmailAddress get email;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  Option<Either<SpliterFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileFromFirebaseUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() saveButtonTapped,
    required TResult Function(SpliterUser user) userUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileFromFirebaseUser value)
        getProfileFromFirebaseUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SaveButtonTapped value) saveButtonTapped,
    required TResult Function(UserUpdated value) userUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$GetProfileFromFirebaseUserCopyWith<$Res> {
  factory _$$GetProfileFromFirebaseUserCopyWith(
          _$GetProfileFromFirebaseUser value,
          $Res Function(_$GetProfileFromFirebaseUser) then) =
      __$$GetProfileFromFirebaseUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileFromFirebaseUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$GetProfileFromFirebaseUserCopyWith<$Res> {
  __$$GetProfileFromFirebaseUserCopyWithImpl(
      _$GetProfileFromFirebaseUser _value,
      $Res Function(_$GetProfileFromFirebaseUser) _then)
      : super(_value, (v) => _then(v as _$GetProfileFromFirebaseUser));

  @override
  _$GetProfileFromFirebaseUser get _value =>
      super._value as _$GetProfileFromFirebaseUser;
}

/// @nodoc

class _$GetProfileFromFirebaseUser implements GetProfileFromFirebaseUser {
  const _$GetProfileFromFirebaseUser();

  @override
  String toString() {
    return 'ProfileEvent.getProfileFromFirebaseUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileFromFirebaseUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileFromFirebaseUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() saveButtonTapped,
    required TResult Function(SpliterUser user) userUpdated,
  }) {
    return getProfileFromFirebaseUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
  }) {
    return getProfileFromFirebaseUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
    required TResult orElse(),
  }) {
    if (getProfileFromFirebaseUser != null) {
      return getProfileFromFirebaseUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileFromFirebaseUser value)
        getProfileFromFirebaseUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SaveButtonTapped value) saveButtonTapped,
    required TResult Function(UserUpdated value) userUpdated,
  }) {
    return getProfileFromFirebaseUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
  }) {
    return getProfileFromFirebaseUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
    required TResult orElse(),
  }) {
    if (getProfileFromFirebaseUser != null) {
      return getProfileFromFirebaseUser(this);
    }
    return orElse();
  }
}

abstract class GetProfileFromFirebaseUser implements ProfileEvent {
  const factory GetProfileFromFirebaseUser() = _$GetProfileFromFirebaseUser;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, (v) => _then(v as _$NameChanged));

  @override
  _$NameChanged get _value => super._value as _$NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileFromFirebaseUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() saveButtonTapped,
    required TResult Function(SpliterUser user) userUpdated,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileFromFirebaseUser value)
        getProfileFromFirebaseUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SaveButtonTapped value) saveButtonTapped,
    required TResult Function(UserUpdated value) userUpdated,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ProfileEvent {
  const factory NameChanged(final String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ProfileEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileFromFirebaseUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() saveButtonTapped,
    required TResult Function(SpliterUser user) userUpdated,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileFromFirebaseUser value)
        getProfileFromFirebaseUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SaveButtonTapped value) saveButtonTapped,
    required TResult Function(UserUpdated value) userUpdated,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ProfileEvent {
  const factory EmailChanged(final String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveButtonTappedCopyWith<$Res> {
  factory _$$SaveButtonTappedCopyWith(
          _$SaveButtonTapped value, $Res Function(_$SaveButtonTapped) then) =
      __$$SaveButtonTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveButtonTappedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$SaveButtonTappedCopyWith<$Res> {
  __$$SaveButtonTappedCopyWithImpl(
      _$SaveButtonTapped _value, $Res Function(_$SaveButtonTapped) _then)
      : super(_value, (v) => _then(v as _$SaveButtonTapped));

  @override
  _$SaveButtonTapped get _value => super._value as _$SaveButtonTapped;
}

/// @nodoc

class _$SaveButtonTapped implements SaveButtonTapped {
  const _$SaveButtonTapped();

  @override
  String toString() {
    return 'ProfileEvent.saveButtonTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveButtonTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileFromFirebaseUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() saveButtonTapped,
    required TResult Function(SpliterUser user) userUpdated,
  }) {
    return saveButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
  }) {
    return saveButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
    required TResult orElse(),
  }) {
    if (saveButtonTapped != null) {
      return saveButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileFromFirebaseUser value)
        getProfileFromFirebaseUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SaveButtonTapped value) saveButtonTapped,
    required TResult Function(UserUpdated value) userUpdated,
  }) {
    return saveButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
  }) {
    return saveButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
    required TResult orElse(),
  }) {
    if (saveButtonTapped != null) {
      return saveButtonTapped(this);
    }
    return orElse();
  }
}

abstract class SaveButtonTapped implements ProfileEvent {
  const factory SaveButtonTapped() = _$SaveButtonTapped;
}

/// @nodoc
abstract class _$$UserUpdatedCopyWith<$Res> {
  factory _$$UserUpdatedCopyWith(
          _$UserUpdated value, $Res Function(_$UserUpdated) then) =
      __$$UserUpdatedCopyWithImpl<$Res>;
  $Res call({SpliterUser user});

  $SpliterUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserUpdatedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$UserUpdatedCopyWith<$Res> {
  __$$UserUpdatedCopyWithImpl(
      _$UserUpdated _value, $Res Function(_$UserUpdated) _then)
      : super(_value, (v) => _then(v as _$UserUpdated));

  @override
  _$UserUpdated get _value => super._value as _$UserUpdated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserUpdated(
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

class _$UserUpdated implements UserUpdated {
  const _$UserUpdated(this.user);

  @override
  final SpliterUser user;

  @override
  String toString() {
    return 'ProfileEvent.userUpdated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UserUpdatedCopyWith<_$UserUpdated> get copyWith =>
      __$$UserUpdatedCopyWithImpl<_$UserUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileFromFirebaseUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() saveButtonTapped,
    required TResult Function(SpliterUser user) userUpdated,
  }) {
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
  }) {
    return userUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileFromFirebaseUser,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? saveButtonTapped,
    TResult Function(SpliterUser user)? userUpdated,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileFromFirebaseUser value)
        getProfileFromFirebaseUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SaveButtonTapped value) saveButtonTapped,
    required TResult Function(UserUpdated value) userUpdated,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileFromFirebaseUser value)?
        getProfileFromFirebaseUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SaveButtonTapped value)? saveButtonTapped,
    TResult Function(UserUpdated value)? userUpdated,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class UserUpdated implements ProfileEvent {
  const factory UserUpdated(final SpliterUser user) = _$UserUpdated;

  SpliterUser get user;
  @JsonKey(ignore: true)
  _$$UserUpdatedCopyWith<_$UserUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
