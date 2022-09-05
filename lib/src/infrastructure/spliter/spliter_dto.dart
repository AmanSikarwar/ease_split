import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spliter_dto.freezed.dart';
part 'spliter_dto.g.dart';

@freezed
class SpliterUserDto with _$SpliterUserDto {
  @JsonSerializable(explicitToJson: true)
  factory SpliterUserDto({
    @JsonKey(ignore: true) String? id,
    required String name,
    required num owe,
    required num owed,
  }) = _SpliterUserDto;

  factory SpliterUserDto.fromDomain(SpliterUser user) {
    return SpliterUserDto(
      id: user.id.getOrCrash(),
      name: user.name.getOrCrash(),
      owe: user.owe.getOrCrash(),
      owed: user.owed.getOrCrash(),
    );
  }

  factory SpliterUserDto.fromJson(Map<String, dynamic> json) =>
      _$SpliterUserDtoFromJson(json);

  factory SpliterUserDto.fromFirestore(DocumentSnapshot doc) =>
      SpliterUserDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}

@freezed
class GroupDto with _$GroupDto {
  @JsonSerializable(explicitToJson: true)
  factory GroupDto({
    @JsonKey(ignore: true) String? id,
    required String name,
    required String description,
    required String category,
    required SpliterUserDto creator,
    required num groupTotalExpenditure,
  }) = _GroupDto;

  factory GroupDto.fromJson(Map<String, dynamic> json) =>
      _$GroupDtoFromJson(json);

  factory GroupDto.fromFirestore(DocumentSnapshot doc) =>
      GroupDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}

@freezed
class ExpenditureDto with _$ExpenditureDto {
  @JsonSerializable(explicitToJson: true)
  factory ExpenditureDto({
    @JsonKey(ignore: true) String? id,
    required String groupId,
    required String name,
    required num amount,
    required DateTime dateTime,
    required SpliterUserDto payedBy,
  }) = _ExpenditureDto;
  factory ExpenditureDto.fromDomain(Expenditure expenditure) {
    return ExpenditureDto(
      id: expenditure.id.getOrCrash(),
      groupId: expenditure.id.getOrCrash(),
      name: expenditure.name.getOrCrash(),
      amount: expenditure.amount.getOrCrash(),
      dateTime: expenditure.lastUpdated,
      payedBy: SpliterUserDto.fromDomain(expenditure.payedBy),
    );
  }
  factory ExpenditureDto.fromJson(Map<String, dynamic> json) =>
      _$ExpenditureDtoFromJson(json);
  factory ExpenditureDto.fromFirestore(DocumentSnapshot doc) =>
      ExpenditureDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}

Map<String, dynamic> groupToJson(GroupDto groupDto) =>
    _$$_GroupDtoToJson(groupDto as _$_GroupDto);
