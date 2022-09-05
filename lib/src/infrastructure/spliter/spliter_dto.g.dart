// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'spliter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpliterUserDto _$$_SpliterUserDtoFromJson(Map<String, dynamic> json) =>
    _$_SpliterUserDto(
      name: json['name'] as String,
      owe: json['owe'] as num,
      owed: json['owed'] as num,
    );

const _$$_SpliterUserDtoFieldMap = <String, String>{
  'name': 'name',
  'owe': 'owe',
  'owed': 'owed',
};

Map<String, dynamic> _$$_SpliterUserDtoToJson(_$_SpliterUserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owe': instance.owe,
      'owed': instance.owed,
    };

_$_GroupDto _$$_GroupDtoFromJson(Map<String, dynamic> json) => _$_GroupDto(
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      creator: SpliterUserDto.fromJson(json['creator'] as Map<String, dynamic>),
      groupTotalExpenditure: json['groupTotalExpenditure'] as num,
    );

const _$$_GroupDtoFieldMap = <String, String>{
  'name': 'name',
  'description': 'description',
  'category': 'category',
  'creator': 'creator',
  'groupTotalExpenditure': 'groupTotalExpenditure',
};

Map<String, dynamic> _$$_GroupDtoToJson(_$_GroupDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'creator': instance.creator.toJson(),
      'groupTotalExpenditure': instance.groupTotalExpenditure,
    };

_$_ExpenditureDto _$$_ExpenditureDtoFromJson(Map<String, dynamic> json) =>
    _$_ExpenditureDto(
      groupId: json['groupId'] as String,
      name: json['name'] as String,
      amount: json['amount'] as num,
      dateTime: DateTime.parse(json['dateTime'] as String),
      payedBy: SpliterUserDto.fromJson(json['payedBy'] as Map<String, dynamic>),
    );

const _$$_ExpenditureDtoFieldMap = <String, String>{
  'groupId': 'groupId',
  'name': 'name',
  'amount': 'amount',
  'dateTime': 'dateTime',
  'payedBy': 'payedBy',
};

Map<String, dynamic> _$$_ExpenditureDtoToJson(_$_ExpenditureDto instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'amount': instance.amount,
      'dateTime': instance.dateTime.toIso8601String(),
      'payedBy': instance.payedBy.toJson(),
    };
