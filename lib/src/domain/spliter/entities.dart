import 'package:ease_split/src/domain/auth/value_objects.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entities.freezed.dart';

@freezed
class SpliterUser with _$SpliterUser {
  const factory SpliterUser({
    required UniqueId id,
    required StringSingleLine name,
    required EmailAddress email,
    required PositiveNumber owe,
    required PositiveNumber owed,
    required DateTime joinedOn,
    required PositiveNumber totalExpenditure,
  }) = _SpliterUser;
}

@freezed
class Expenditure with _$Expenditure {
  const factory Expenditure({
    required UniqueId id,
    required UniqueId groupId,
    required StringSingleLine name,
    required PositiveNumber amount,
    required DateTime lastUpdated,
    required SpliterUser payedBy,
    required List<StringSingleLine> sharedWith,
  }) = _Expenditure;
}

@freezed
class Group with _$Group {
  factory Group({
    required UniqueId id,
    required StringSingleLine name,
    required MaxLengthString description,
    required StringSingleLine category,
    required StringSingleLine creator,
    required DateTime createdOn,
    required List<StringSingleLine> members,
    required PositiveNumber totalExpenditure,
  }) = _Group;

  factory Group.empty() => Group(
        category: StringSingleLine(""),
        createdOn: DateTime.now(),
        creator: StringSingleLine(""),
        description: MaxLengthString(""),
        id: UniqueId(),
        name: StringSingleLine(""),
        members: [],
        totalExpenditure: PositiveNumber(0),
      );
}
