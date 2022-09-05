// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpliterUser {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  PositiveNumber get owe => throw _privateConstructorUsedError;
  PositiveNumber get owed => throw _privateConstructorUsedError;
  DateTime get joinedOn => throw _privateConstructorUsedError;
  PositiveNumber get totalExpenditure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpliterUserCopyWith<SpliterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpliterUserCopyWith<$Res> {
  factory $SpliterUserCopyWith(
          SpliterUser value, $Res Function(SpliterUser) then) =
      _$SpliterUserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress email,
      PositiveNumber owe,
      PositiveNumber owed,
      DateTime joinedOn,
      PositiveNumber totalExpenditure});
}

/// @nodoc
class _$SpliterUserCopyWithImpl<$Res> implements $SpliterUserCopyWith<$Res> {
  _$SpliterUserCopyWithImpl(this._value, this._then);

  final SpliterUser _value;
  // ignore: unused_field
  final $Res Function(SpliterUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? owe = freezed,
    Object? owed = freezed,
    Object? joinedOn = freezed,
    Object? totalExpenditure = freezed,
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
      owe: owe == freezed
          ? _value.owe
          : owe // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      owed: owed == freezed
          ? _value.owed
          : owed // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      joinedOn: joinedOn == freezed
          ? _value.joinedOn
          : joinedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpenditure: totalExpenditure == freezed
          ? _value.totalExpenditure
          : totalExpenditure // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
    ));
  }
}

/// @nodoc
abstract class _$$_SpliterUserCopyWith<$Res>
    implements $SpliterUserCopyWith<$Res> {
  factory _$$_SpliterUserCopyWith(
          _$_SpliterUser value, $Res Function(_$_SpliterUser) then) =
      __$$_SpliterUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress email,
      PositiveNumber owe,
      PositiveNumber owed,
      DateTime joinedOn,
      PositiveNumber totalExpenditure});
}

/// @nodoc
class __$$_SpliterUserCopyWithImpl<$Res> extends _$SpliterUserCopyWithImpl<$Res>
    implements _$$_SpliterUserCopyWith<$Res> {
  __$$_SpliterUserCopyWithImpl(
      _$_SpliterUser _value, $Res Function(_$_SpliterUser) _then)
      : super(_value, (v) => _then(v as _$_SpliterUser));

  @override
  _$_SpliterUser get _value => super._value as _$_SpliterUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? owe = freezed,
    Object? owed = freezed,
    Object? joinedOn = freezed,
    Object? totalExpenditure = freezed,
  }) {
    return _then(_$_SpliterUser(
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
      owe: owe == freezed
          ? _value.owe
          : owe // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      owed: owed == freezed
          ? _value.owed
          : owed // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      joinedOn: joinedOn == freezed
          ? _value.joinedOn
          : joinedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpenditure: totalExpenditure == freezed
          ? _value.totalExpenditure
          : totalExpenditure // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
    ));
  }
}

/// @nodoc

class _$_SpliterUser implements _SpliterUser {
  const _$_SpliterUser(
      {required this.id,
      required this.name,
      required this.email,
      required this.owe,
      required this.owed,
      required this.joinedOn,
      required this.totalExpenditure});

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress email;
  @override
  final PositiveNumber owe;
  @override
  final PositiveNumber owed;
  @override
  final DateTime joinedOn;
  @override
  final PositiveNumber totalExpenditure;

  @override
  String toString() {
    return 'SpliterUser(id: $id, name: $name, email: $email, owe: $owe, owed: $owed, joinedOn: $joinedOn, totalExpenditure: $totalExpenditure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpliterUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.owe, owe) &&
            const DeepCollectionEquality().equals(other.owed, owed) &&
            const DeepCollectionEquality().equals(other.joinedOn, joinedOn) &&
            const DeepCollectionEquality()
                .equals(other.totalExpenditure, totalExpenditure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(owe),
      const DeepCollectionEquality().hash(owed),
      const DeepCollectionEquality().hash(joinedOn),
      const DeepCollectionEquality().hash(totalExpenditure));

  @JsonKey(ignore: true)
  @override
  _$$_SpliterUserCopyWith<_$_SpliterUser> get copyWith =>
      __$$_SpliterUserCopyWithImpl<_$_SpliterUser>(this, _$identity);
}

abstract class _SpliterUser implements SpliterUser {
  const factory _SpliterUser(
      {required final UniqueId id,
      required final StringSingleLine name,
      required final EmailAddress email,
      required final PositiveNumber owe,
      required final PositiveNumber owed,
      required final DateTime joinedOn,
      required final PositiveNumber totalExpenditure}) = _$_SpliterUser;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  EmailAddress get email;
  @override
  PositiveNumber get owe;
  @override
  PositiveNumber get owed;
  @override
  DateTime get joinedOn;
  @override
  PositiveNumber get totalExpenditure;
  @override
  @JsonKey(ignore: true)
  _$$_SpliterUserCopyWith<_$_SpliterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Expenditure {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get groupId => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  PositiveNumber get amount => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  SpliterUser get payedBy => throw _privateConstructorUsedError;
  List<StringSingleLine> get sharedWith => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenditureCopyWith<Expenditure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenditureCopyWith<$Res> {
  factory $ExpenditureCopyWith(
          Expenditure value, $Res Function(Expenditure) then) =
      _$ExpenditureCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId groupId,
      StringSingleLine name,
      PositiveNumber amount,
      DateTime lastUpdated,
      SpliterUser payedBy,
      List<StringSingleLine> sharedWith});

  $SpliterUserCopyWith<$Res> get payedBy;
}

/// @nodoc
class _$ExpenditureCopyWithImpl<$Res> implements $ExpenditureCopyWith<$Res> {
  _$ExpenditureCopyWithImpl(this._value, this._then);

  final Expenditure _value;
  // ignore: unused_field
  final $Res Function(Expenditure) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? lastUpdated = freezed,
    Object? payedBy = freezed,
    Object? sharedWith = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payedBy: payedBy == freezed
          ? _value.payedBy
          : payedBy // ignore: cast_nullable_to_non_nullable
              as SpliterUser,
      sharedWith: sharedWith == freezed
          ? _value.sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<StringSingleLine>,
    ));
  }

  @override
  $SpliterUserCopyWith<$Res> get payedBy {
    return $SpliterUserCopyWith<$Res>(_value.payedBy, (value) {
      return _then(_value.copyWith(payedBy: value));
    });
  }
}

/// @nodoc
abstract class _$$_ExpenditureCopyWith<$Res>
    implements $ExpenditureCopyWith<$Res> {
  factory _$$_ExpenditureCopyWith(
          _$_Expenditure value, $Res Function(_$_Expenditure) then) =
      __$$_ExpenditureCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId groupId,
      StringSingleLine name,
      PositiveNumber amount,
      DateTime lastUpdated,
      SpliterUser payedBy,
      List<StringSingleLine> sharedWith});

  @override
  $SpliterUserCopyWith<$Res> get payedBy;
}

/// @nodoc
class __$$_ExpenditureCopyWithImpl<$Res> extends _$ExpenditureCopyWithImpl<$Res>
    implements _$$_ExpenditureCopyWith<$Res> {
  __$$_ExpenditureCopyWithImpl(
      _$_Expenditure _value, $Res Function(_$_Expenditure) _then)
      : super(_value, (v) => _then(v as _$_Expenditure));

  @override
  _$_Expenditure get _value => super._value as _$_Expenditure;

  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? lastUpdated = freezed,
    Object? payedBy = freezed,
    Object? sharedWith = freezed,
  }) {
    return _then(_$_Expenditure(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payedBy: payedBy == freezed
          ? _value.payedBy
          : payedBy // ignore: cast_nullable_to_non_nullable
              as SpliterUser,
      sharedWith: sharedWith == freezed
          ? _value._sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<StringSingleLine>,
    ));
  }
}

/// @nodoc

class _$_Expenditure implements _Expenditure {
  const _$_Expenditure(
      {required this.id,
      required this.groupId,
      required this.name,
      required this.amount,
      required this.lastUpdated,
      required this.payedBy,
      required final List<StringSingleLine> sharedWith})
      : _sharedWith = sharedWith;

  @override
  final UniqueId id;
  @override
  final UniqueId groupId;
  @override
  final StringSingleLine name;
  @override
  final PositiveNumber amount;
  @override
  final DateTime lastUpdated;
  @override
  final SpliterUser payedBy;
  final List<StringSingleLine> _sharedWith;
  @override
  List<StringSingleLine> get sharedWith {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedWith);
  }

  @override
  String toString() {
    return 'Expenditure(id: $id, groupId: $groupId, name: $name, amount: $amount, lastUpdated: $lastUpdated, payedBy: $payedBy, sharedWith: $sharedWith)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Expenditure &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.payedBy, payedBy) &&
            const DeepCollectionEquality()
                .equals(other._sharedWith, _sharedWith));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(payedBy),
      const DeepCollectionEquality().hash(_sharedWith));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenditureCopyWith<_$_Expenditure> get copyWith =>
      __$$_ExpenditureCopyWithImpl<_$_Expenditure>(this, _$identity);
}

abstract class _Expenditure implements Expenditure {
  const factory _Expenditure(
      {required final UniqueId id,
      required final UniqueId groupId,
      required final StringSingleLine name,
      required final PositiveNumber amount,
      required final DateTime lastUpdated,
      required final SpliterUser payedBy,
      required final List<StringSingleLine> sharedWith}) = _$_Expenditure;

  @override
  UniqueId get id;
  @override
  UniqueId get groupId;
  @override
  StringSingleLine get name;
  @override
  PositiveNumber get amount;
  @override
  DateTime get lastUpdated;
  @override
  SpliterUser get payedBy;
  @override
  List<StringSingleLine> get sharedWith;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenditureCopyWith<_$_Expenditure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Group {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  MaxLengthString get description => throw _privateConstructorUsedError;
  StringSingleLine get category => throw _privateConstructorUsedError;
  StringSingleLine get creator => throw _privateConstructorUsedError;
  DateTime get createdOn => throw _privateConstructorUsedError;
  List<StringSingleLine> get members => throw _privateConstructorUsedError;
  PositiveNumber get totalExpenditure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      MaxLengthString description,
      StringSingleLine category,
      StringSingleLine creator,
      DateTime createdOn,
      List<StringSingleLine> members,
      PositiveNumber totalExpenditure});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? creator = freezed,
    Object? createdOn = freezed,
    Object? members = freezed,
    Object? totalExpenditure = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as MaxLengthString,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<StringSingleLine>,
      totalExpenditure: totalExpenditure == freezed
          ? _value.totalExpenditure
          : totalExpenditure // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
    ));
  }
}

/// @nodoc
abstract class _$$_GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$_GroupCopyWith(_$_Group value, $Res Function(_$_Group) then) =
      __$$_GroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      MaxLengthString description,
      StringSingleLine category,
      StringSingleLine creator,
      DateTime createdOn,
      List<StringSingleLine> members,
      PositiveNumber totalExpenditure});
}

/// @nodoc
class __$$_GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$$_GroupCopyWith<$Res> {
  __$$_GroupCopyWithImpl(_$_Group _value, $Res Function(_$_Group) _then)
      : super(_value, (v) => _then(v as _$_Group));

  @override
  _$_Group get _value => super._value as _$_Group;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? creator = freezed,
    Object? createdOn = freezed,
    Object? members = freezed,
    Object? totalExpenditure = freezed,
  }) {
    return _then(_$_Group(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as MaxLengthString,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<StringSingleLine>,
      totalExpenditure: totalExpenditure == freezed
          ? _value.totalExpenditure
          : totalExpenditure // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
    ));
  }
}

/// @nodoc

class _$_Group implements _Group {
  _$_Group(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.creator,
      required this.createdOn,
      required final List<StringSingleLine> members,
      required this.totalExpenditure})
      : _members = members;

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final MaxLengthString description;
  @override
  final StringSingleLine category;
  @override
  final StringSingleLine creator;
  @override
  final DateTime createdOn;
  final List<StringSingleLine> _members;
  @override
  List<StringSingleLine> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final PositiveNumber totalExpenditure;

  @override
  String toString() {
    return 'Group(id: $id, name: $name, description: $description, category: $category, creator: $creator, createdOn: $createdOn, members: $members, totalExpenditure: $totalExpenditure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Group &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.createdOn, createdOn) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other.totalExpenditure, totalExpenditure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(creator),
      const DeepCollectionEquality().hash(createdOn),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(totalExpenditure));

  @JsonKey(ignore: true)
  @override
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      __$$_GroupCopyWithImpl<_$_Group>(this, _$identity);
}

abstract class _Group implements Group {
  factory _Group(
      {required final UniqueId id,
      required final StringSingleLine name,
      required final MaxLengthString description,
      required final StringSingleLine category,
      required final StringSingleLine creator,
      required final DateTime createdOn,
      required final List<StringSingleLine> members,
      required final PositiveNumber totalExpenditure}) = _$_Group;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  MaxLengthString get description;
  @override
  StringSingleLine get category;
  @override
  StringSingleLine get creator;
  @override
  DateTime get createdOn;
  @override
  List<StringSingleLine> get members;
  @override
  PositiveNumber get totalExpenditure;
  @override
  @JsonKey(ignore: true)
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      throw _privateConstructorUsedError;
}
