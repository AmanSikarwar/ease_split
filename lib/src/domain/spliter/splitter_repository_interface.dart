import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/domain/spliter/spliter_failures.dart';

abstract class ISpliterRepository {
  Future<Either<SpliterFailure, bool>> checkSpliterUser();

  Future<Either<SpliterFailure, SpliterUser>> getUser();

  Future<Either<SpliterFailure, SpliterUser>> addUsertoGroup(
      {required SpliterUser user, required Group group});

  Future<Either<SpliterFailure, Unit>> creatUser(SpliterUser user);

  Future<Either<SpliterFailure, SpliterUser>> updateUser(
      SpliterUser user);

  Future<Either<SpliterFailure, Unit>> deleteUser(SpliterUser user);

  Future<Either<SpliterFailure, Unit>> createGroup(Group group);

  Future<Either<SpliterFailure, Unit>> updateGroup(Group group);

  Future<Either<SpliterFailure, Unit>> deleteGroup(Group group);

  Future<Either<SpliterFailure, Expenditure>> addExpenditure(
      Expenditure expenditure);

  Future<Either<SpliterFailure, Expenditure>> updateExpenditure(
      Expenditure expenditure);

  Future<Either<SpliterFailure, Unit>> deleteExpenditure(
      Expenditure expenditure);

  Future<Either<SpliterFailure, List<SpliterUser>>> getMembers(
      Group group);

  Stream<Either<SpliterFailure, List<Group>>> watchAllGroups();

  Stream<Either<SpliterFailure, Group>> watchGroup(String groupId);

  Stream<Either<SpliterFailure, SpliterUser>> watchUser();
}
