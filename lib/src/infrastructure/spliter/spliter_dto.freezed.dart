// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spliter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpliterUserDto _$SpliterUserDtoFromJson(Map<String, dynamic> json) {
  return _SpliterUserDto.fromJson(json);
}

/// @nodoc
mixin _$SpliterUserDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get owe => throw _privateConstructorUsedError;
  num get owed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpliterUserDtoCopyWith<SpliterUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpliterUserDtoCopyWith<$Res> {
  factory $SpliterUserDtoCopyWith(
          SpliterUserDto value, $Res Function(SpliterUserDto) then) =
      _$SpliterUserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id, String name, num owe, num owed});
}

/// @nodoc
class _$SpliterUserDtoCopyWithImpl<$Res>
    implements $SpliterUserDtoCopyWith<$Res> {
  _$SpliterUserDtoCopyWithImpl(this._value, this._then);

  final SpliterUserDto _value;
  // ignore: unused_field
  final $Res Function(SpliterUserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owe = freezed,
    Object? owed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owe: owe == freezed
          ? _value.owe
          : owe // ignore: cast_nullable_to_non_nullable
              as num,
      owed: owed == freezed
          ? _value.owed
          : owed // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_SpliterUserDtoCopyWith<$Res>
    implements $SpliterUserDtoCopyWith<$Res> {
  factory _$$_SpliterUserDtoCopyWith(
          _$_SpliterUserDto value, $Res Function(_$_SpliterUserDto) then) =
      __$$_SpliterUserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id, String name, num owe, num owed});
}

/// @nodoc
class __$$_SpliterUserDtoCopyWithImpl<$Res>
    extends _$SpliterUserDtoCopyWithImpl<$Res>
    implements _$$_SpliterUserDtoCopyWith<$Res> {
  __$$_SpliterUserDtoCopyWithImpl(
      _$_SpliterUserDto _value, $Res Function(_$_SpliterUserDto) _then)
      : super(_value, (v) => _then(v as _$_SpliterUserDto));

  @override
  _$_SpliterUserDto get _value => super._value as _$_SpliterUserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owe = freezed,
    Object? owed = freezed,
  }) {
    return _then(_$_SpliterUserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owe: owe == freezed
          ? _value.owe
          : owe // ignore: cast_nullable_to_non_nullable
              as num,
      owed: owed == freezed
          ? _value.owed
          : owed // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SpliterUserDto implements _SpliterUserDto {
  _$_SpliterUserDto(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.owe,
      required this.owed});

  factory _$_SpliterUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_SpliterUserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  @override
  final num owe;
  @override
  final num owed;

  @override
  String toString() {
    return 'SpliterUserDto(id: $id, name: $name, owe: $owe, owed: $owed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpliterUserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.owe, owe) &&
            const DeepCollectionEquality().equals(other.owed, owed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(owe),
      const DeepCollectionEquality().hash(owed));

  @JsonKey(ignore: true)
  @override
  _$$_SpliterUserDtoCopyWith<_$_SpliterUserDto> get copyWith =>
      __$$_SpliterUserDtoCopyWithImpl<_$_SpliterUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpliterUserDtoToJson(
      this,
    );
  }
}

abstract class _SpliterUserDto implements SpliterUserDto {
  factory _SpliterUserDto(
      {@JsonKey(ignore: true) final String? id,
      required final String name,
      required final num owe,
      required final num owed}) = _$_SpliterUserDto;

  factory _SpliterUserDto.fromJson(Map<String, dynamic> json) =
      _$_SpliterUserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get name;
  @override
  num get owe;
  @override
  num get owed;
  @override
  @JsonKey(ignore: true)
  _$$_SpliterUserDtoCopyWith<_$_SpliterUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupDto _$GroupDtoFromJson(Map<String, dynamic> json) {
  return _GroupDto.fromJson(json);
}

/// @nodoc
mixin _$GroupDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  SpliterUserDto get creator => throw _privateConstructorUsedError;
  num get groupTotalExpenditure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDtoCopyWith<GroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDtoCopyWith<$Res> {
  factory $GroupDtoCopyWith(GroupDto value, $Res Function(GroupDto) then) =
      _$GroupDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String description,
      String category,
      SpliterUserDto creator,
      num groupTotalExpenditure});

  $SpliterUserDtoCopyWith<$Res> get creator;
}

/// @nodoc
class _$GroupDtoCopyWithImpl<$Res> implements $GroupDtoCopyWith<$Res> {
  _$GroupDtoCopyWithImpl(this._value, this._then);

  final GroupDto _value;
  // ignore: unused_field
  final $Res Function(GroupDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? creator = freezed,
    Object? groupTotalExpenditure = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as SpliterUserDto,
      groupTotalExpenditure: groupTotalExpenditure == freezed
          ? _value.groupTotalExpenditure
          : groupTotalExpenditure // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }

  @override
  $SpliterUserDtoCopyWith<$Res> get creator {
    return $SpliterUserDtoCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

/// @nodoc
abstract class _$$_GroupDtoCopyWith<$Res> implements $GroupDtoCopyWith<$Res> {
  factory _$$_GroupDtoCopyWith(
          _$_GroupDto value, $Res Function(_$_GroupDto) then) =
      __$$_GroupDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String description,
      String category,
      SpliterUserDto creator,
      num groupTotalExpenditure});

  @override
  $SpliterUserDtoCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_GroupDtoCopyWithImpl<$Res> extends _$GroupDtoCopyWithImpl<$Res>
    implements _$$_GroupDtoCopyWith<$Res> {
  __$$_GroupDtoCopyWithImpl(
      _$_GroupDto _value, $Res Function(_$_GroupDto) _then)
      : super(_value, (v) => _then(v as _$_GroupDto));

  @override
  _$_GroupDto get _value => super._value as _$_GroupDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? creator = freezed,
    Object? groupTotalExpenditure = freezed,
  }) {
    return _then(_$_GroupDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as SpliterUserDto,
      groupTotalExpenditure: groupTotalExpenditure == freezed
          ? _value.groupTotalExpenditure
          : groupTotalExpenditure // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GroupDto implements _GroupDto {
  _$_GroupDto(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.creator,
      required this.groupTotalExpenditure});

  factory _$_GroupDto.fromJson(Map<String, dynamic> json) =>
      _$$_GroupDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String category;
  @override
  final SpliterUserDto creator;
  @override
  final num groupTotalExpenditure;

  @override
  String toString() {
    return 'GroupDto(id: $id, name: $name, description: $description, category: $category, creator: $creator, groupTotalExpenditure: $groupTotalExpenditure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality()
                .equals(other.groupTotalExpenditure, groupTotalExpenditure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(creator),
      const DeepCollectionEquality().hash(groupTotalExpenditure));

  @JsonKey(ignore: true)
  @override
  _$$_GroupDtoCopyWith<_$_GroupDto> get copyWith =>
      __$$_GroupDtoCopyWithImpl<_$_GroupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupDtoToJson(
      this,
    );
  }
}

abstract class _GroupDto implements GroupDto {
  factory _GroupDto(
      {@JsonKey(ignore: true) final String? id,
      required final String name,
      required final String description,
      required final String category,
      required final SpliterUserDto creator,
      required final num groupTotalExpenditure}) = _$_GroupDto;

  factory _GroupDto.fromJson(Map<String, dynamic> json) = _$_GroupDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get category;
  @override
  SpliterUserDto get creator;
  @override
  num get groupTotalExpenditure;
  @override
  @JsonKey(ignore: true)
  _$$_GroupDtoCopyWith<_$_GroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenditureDto _$ExpenditureDtoFromJson(Map<String, dynamic> json) {
  return _ExpenditureDto.fromJson(json);
}

/// @nodoc
mixin _$ExpenditureDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  SpliterUserDto get payedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenditureDtoCopyWith<ExpenditureDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenditureDtoCopyWith<$Res> {
  factory $ExpenditureDtoCopyWith(
          ExpenditureDto value, $Res Function(ExpenditureDto) then) =
      _$ExpenditureDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String groupId,
      String name,
      num amount,
      DateTime dateTime,
      SpliterUserDto payedBy});

  $SpliterUserDtoCopyWith<$Res> get payedBy;
}

/// @nodoc
class _$ExpenditureDtoCopyWithImpl<$Res>
    implements $ExpenditureDtoCopyWith<$Res> {
  _$ExpenditureDtoCopyWithImpl(this._value, this._then);

  final ExpenditureDto _value;
  // ignore: unused_field
  final $Res Function(ExpenditureDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
    Object? payedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payedBy: payedBy == freezed
          ? _value.payedBy
          : payedBy // ignore: cast_nullable_to_non_nullable
              as SpliterUserDto,
    ));
  }

  @override
  $SpliterUserDtoCopyWith<$Res> get payedBy {
    return $SpliterUserDtoCopyWith<$Res>(_value.payedBy, (value) {
      return _then(_value.copyWith(payedBy: value));
    });
  }
}

/// @nodoc
abstract class _$$_ExpenditureDtoCopyWith<$Res>
    implements $ExpenditureDtoCopyWith<$Res> {
  factory _$$_ExpenditureDtoCopyWith(
          _$_ExpenditureDto value, $Res Function(_$_ExpenditureDto) then) =
      __$$_ExpenditureDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String groupId,
      String name,
      num amount,
      DateTime dateTime,
      SpliterUserDto payedBy});

  @override
  $SpliterUserDtoCopyWith<$Res> get payedBy;
}

/// @nodoc
class __$$_ExpenditureDtoCopyWithImpl<$Res>
    extends _$ExpenditureDtoCopyWithImpl<$Res>
    implements _$$_ExpenditureDtoCopyWith<$Res> {
  __$$_ExpenditureDtoCopyWithImpl(
      _$_ExpenditureDto _value, $Res Function(_$_ExpenditureDto) _then)
      : super(_value, (v) => _then(v as _$_ExpenditureDto));

  @override
  _$_ExpenditureDto get _value => super._value as _$_ExpenditureDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
    Object? payedBy = freezed,
  }) {
    return _then(_$_ExpenditureDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payedBy: payedBy == freezed
          ? _value.payedBy
          : payedBy // ignore: cast_nullable_to_non_nullable
              as SpliterUserDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ExpenditureDto implements _ExpenditureDto {
  _$_ExpenditureDto(
      {@JsonKey(ignore: true) this.id,
      required this.groupId,
      required this.name,
      required this.amount,
      required this.dateTime,
      required this.payedBy});

  factory _$_ExpenditureDto.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenditureDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String groupId;
  @override
  final String name;
  @override
  final num amount;
  @override
  final DateTime dateTime;
  @override
  final SpliterUserDto payedBy;

  @override
  String toString() {
    return 'ExpenditureDto(id: $id, groupId: $groupId, name: $name, amount: $amount, dateTime: $dateTime, payedBy: $payedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenditureDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.payedBy, payedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(payedBy));

  @JsonKey(ignore: true)
  @override
  _$$_ExpenditureDtoCopyWith<_$_ExpenditureDto> get copyWith =>
      __$$_ExpenditureDtoCopyWithImpl<_$_ExpenditureDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenditureDtoToJson(
      this,
    );
  }
}

abstract class _ExpenditureDto implements ExpenditureDto {
  factory _ExpenditureDto(
      {@JsonKey(ignore: true) final String? id,
      required final String groupId,
      required final String name,
      required final num amount,
      required final DateTime dateTime,
      required final SpliterUserDto payedBy}) = _$_ExpenditureDto;

  factory _ExpenditureDto.fromJson(Map<String, dynamic> json) =
      _$_ExpenditureDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get groupId;
  @override
  String get name;
  @override
  num get amount;
  @override
  DateTime get dateTime;
  @override
  SpliterUserDto get payedBy;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenditureDtoCopyWith<_$_ExpenditureDto> get copyWith =>
      throw _privateConstructorUsedError;
}
