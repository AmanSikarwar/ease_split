import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:ease_split/src/domain/auth/value_objects.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/infrastructure/spliter/spliter_odm/validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spliter_odm.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  createFieldMap: true,
  explicitToJson: true,
);

@firestoreSerializable
class SpliterUserOdm {
  @StringSingleLineAndNotEmptyValidator()
  final String id;
  @StringSingleLineAndNotEmptyValidator()
  final String name;
  @EmailAddressValidator()
  final String email;
  @Min(0)
  final num owe;
  @Min(0)
  final num owed;
  @Min(0)
  final num totalExpenditure;

  final Timestamp lastUpdated;

  SpliterUserOdm({
    required this.id,
    required this.name,
    required this.email,
    required this.owe,
    required this.owed,
    required this.totalExpenditure,
    required this.lastUpdated,
  }) {
    _$assertSpliterUserOdm(this);
  }

  factory SpliterUserOdm.fromJson(Map<String, dynamic> json) =>
      _$SpliterUserOdmFromJson(json);

  Map<String, dynamic> toJson() => _$SpliterUserOdmToJson(this);

  factory SpliterUserOdm.fromFirestore(SpliterUserOdm doc) => doc;

  factory SpliterUserOdm.fromDomain(SpliterUser user) => SpliterUserOdm(
        id: user.id.getOrCrash(),
        name: user.name.getOrCrash(),
        email: user.email.getOrCrash(),
        owe: user.owe.getOrCrash(),
        owed: user.owed.getOrCrash(),
        totalExpenditure: user.totalExpenditure.getOrCrash(),
        lastUpdated: Timestamp.now(),
      );

  SpliterUser toDomain() => SpliterUser(
        id: UniqueId.fromUniqueString(id),
        name: StringSingleLine(name),
        email: EmailAddress(email),
        owe: PositiveNumber(owe),
        owed: PositiveNumber(owed),
        joinedOn: DateTime.fromMillisecondsSinceEpoch(
            lastUpdated.millisecondsSinceEpoch),
        totalExpenditure: PositiveNumber(totalExpenditure),
      );
}

@firestoreSerializable
class SpliterGroup {
  @StringSingleLineAndNotEmptyValidator()
  final String id;
  @StringSingleLineAndNotEmptyValidator()
  final String name;
  @DescriptionValidator()
  final String description;
  @StringSingleLineAndNotEmptyValidator()
  final String category;
  @StringSingleLineAndNotEmptyValidator()
  final String createdBy;
  final Timestamp createdOn;
  @ListNotEmptyValidator()
  final List<String> members;
  @Min(0)
  final num totalExpenditure;

  SpliterGroup({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.createdBy,
    required this.createdOn,
    required this.members,
    required this.totalExpenditure,
  }) {
    _$assertSpliterGroup(this);
  }

  factory SpliterGroup.fromJson(Map<String, dynamic> json) =>
      _$SpliterGroupFromJson(json);

  Map<String, dynamic> toJson() => _$SpliterGroupToJson(this);

  factory SpliterGroup.fromFirestore(SpliterGroup doc) => doc;

  factory SpliterGroup.fromDomain(Group group) => SpliterGroup(
        id: group.id.getOrCrash(),
        name: group.name.getOrCrash(),
        description: group.description.getOrCrash(),
        category: group.category.getOrCrash(),
        createdBy: group.creator.getOrCrash(),
        createdOn: Timestamp.now(),
        members: group.members
            .map((member) => member.getOrCrash())
            .toList(growable: false),
        totalExpenditure: group.totalExpenditure.getOrCrash(),
      );

  Group toDomain() => Group(
        id: UniqueId.fromUniqueString(id),
        name: StringSingleLine(name),
        description: MaxLengthString(description),
        category: StringSingleLine(category),
        creator: StringSingleLine(createdBy),
        createdOn: DateTime.fromMillisecondsSinceEpoch(
            createdOn.millisecondsSinceEpoch),
        members: [],
        totalExpenditure: PositiveNumber(totalExpenditure),
      );
}

@firestoreSerializable
class GroupMember {
  @StringSingleLineAndNotEmptyValidator()
  final String id;
  @StringSingleLineAndNotEmptyValidator()
  final String name;
  @EmailAddressValidator()
  final String email;
  @Min(0)
  final num owe;
  @Min(0)
  final num owed;
  final Timestamp joinedOn;
  @Min(0)
  final num totalExpenditure;

  GroupMember({
    required this.id,
    required this.name,
    required this.email,
    required this.owe,
    required this.owed,
    required this.joinedOn,
    required this.totalExpenditure,
  }) {
    _$assertGroupMember(this);
  }

  factory GroupMember.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberFromJson(json);

  Map<String, dynamic> toJson() => _$GroupMemberToJson(this);

  factory GroupMember.fromFirestore(GroupMember doc) => doc;

  factory GroupMember.fromDomain(SpliterUser member) => GroupMember(
        id: member.id.getOrCrash(),
        name: member.name.getOrCrash(),
        email: member.email.getOrCrash(),
        owe: member.owe.getOrCrash(),
        owed: member.owed.getOrCrash(),
        joinedOn: Timestamp.now(),
        totalExpenditure: member.totalExpenditure.getOrCrash(),
      );
}

@firestoreSerializable
class Expense {
  @StringSingleLineAndNotEmptyValidator()
  final String id;
  @StringSingleLineAndNotEmptyValidator()
  final String name;
  @Min(0)
  final num amount;
  @StringSingleLineAndNotEmptyValidator()
  final String payedBy;
  @StringSingleLineAndNotEmptyValidator()
  final String groupId;
  @StringSingleLineAndNotEmptyValidator()
  final String groupName;
  final Timestamp createdOn;

  Expense({
    required this.id,
    required this.name,
    required this.amount,
    required this.payedBy,
    required this.groupId,
    required this.groupName,
    required this.createdOn,
  }) {
    _$assertExpense(this);
  }

  factory Expense.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFromJson(json);

  Map<String, dynamic> toJson() => _$ExpenseToJson(this);
}

@Collection<SpliterUserOdm>("users")
@Collection<SpliterGroup>("users/*/groups")
@Collection<Expense>("users/*/groups/*/expenses")
@Collection<GroupMember>("users/*/groups/*/members")
final userRef = SpliterUserOdmCollectionReference();
