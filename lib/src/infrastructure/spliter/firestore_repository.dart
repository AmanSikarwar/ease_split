import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/domain/spliter/spliter_failures.dart';
import 'package:ease_split/src/domain/spliter/splitter_repository_interface.dart';
import 'package:ease_split/src/infrastructure/spliter/spliter_odm/spliter_odm.dart';
import 'package:ease_split/src/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@prod
@LazySingleton(as: ISpliterRepository)
class SpliterRepository implements ISpliterRepository {
  SpliterRepository(this._firestore);

  final FirebaseFirestore _firestore;

  User? getFirebaseUser() => getIt<FirebaseAuth>().currentUser;

  @override
  Future<Either<SpliterFailure, Expenditure>> addExpenditure(
      Expenditure expenditure) {
    // TODO: implement addExpenditure
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, SpliterUser>> addUsertoGroup(
      {required SpliterUser user, required Group group}) {
    // TODO: implement addUsertoGroup
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, Unit>> createGroup(Group group) async {
    try {
      final updatedGroup = group.copyWith(
        creator: StringSingleLine(getFirebaseUser()!.uid),
      );
      await SpliterUserOdmCollectionReference()
          .doc(getFirebaseUser()!.uid)
          .groups
          .doc(updatedGroup.id.getOrCrash())
          .set(SpliterGroup.fromDomain(updatedGroup));
      return right(unit);
    } catch (e) {
      return left(const SpliterFailure.unabletoCreate());
    }
  }

  @override
  Future<Either<SpliterFailure, Unit>> deleteExpenditure(
      Expenditure expenditure) {
    // TODO: implement deleteExpenditure
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, Unit>> deleteGroup(Group group) {
    // TODO: implement deleteGroup
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, Unit>> deleteUser(SpliterUser user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, List<SpliterUser>>> getMembers(
      Group group) {
    // TODO: implement getMembers
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, Expenditure>> updateExpenditure(
      Expenditure expenditure) {
    // TODO: implement updateExpenditure
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, Unit>> updateGroup(Group group) {
    // TODO: implement updateGroup
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, SpliterUser>> updateUser(
      SpliterUser user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<Either<SpliterFailure, SpliterUser>> getUser() async {
    try {
      final firebaseUser = getFirebaseUser();
      if (firebaseUser != null) {
        final userCollection =
            SpliterUserOdmCollectionReference(_firestore);
        final docSnapShot =
            await userCollection.doc(firebaseUser.uid).get();

        print(docSnapShot.data!.lastUpdated);
        if (docSnapShot.exists) {
          return right(docSnapShot.data!.toDomain());
        } else {
          return left(
            const SpliterFailure.empty(
                failedValue: "Document does not exists"),
          );
        }
      } else {
        return left(const SpliterFailure.unexpected(
          failedValue: "user not signed in",
        ));
      }
    } catch (e) {
      return left(SpliterFailure.unexpected(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<SpliterFailure, Unit>> creatUser(
      SpliterUser user) async {
    try {
      await SpliterUserOdmCollectionReference()
          .doc(user.id.getOrCrash())
          .set(SpliterUserOdm.fromDomain(user));
      return right(unit);
    } catch (e) {
      return left(
          SpliterFailure.unabletoCreate(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<SpliterFailure, bool>> checkSpliterUser() async {
    try {
      final firebaseUser = getFirebaseUser();
      if (firebaseUser != null) {
        final userCollection =
            SpliterUserOdmCollectionReference(_firestore);
        final docSnapShot =
            await userCollection.doc(firebaseUser.uid).get();
        return right(docSnapShot.exists);
      } else {
        return left(const SpliterFailure.unexpected());
      }
    } catch (e) {
      return left(SpliterFailure.unexpected(failedValue: e.toString()));
    }
  }

  @override
  Stream<Either<SpliterFailure, List<Group>>> watchAllGroups() async* {
    final userDoc = SpliterUserOdmCollectionReference(_firestore)
        .doc(getFirebaseUser()!.uid);
    yield* userDoc.groups.reference
        .orderBy("createdOn", descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return right<SpliterFailure, List<Group>>(
          snapshot.docs
              .map((doc) =>
                  SpliterGroup.fromFirestore(doc.data()).toDomain())
              .toList(),
        );
      },
    ).onErrorReturnWith((error, stackTrace) {
      print(error);
      if (error is PlatformException &&
          error.message!.contains("permission-denied")) {
        return left(const SpliterFailure.insuffientPermission());
      } else {
        return left(const SpliterFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<SpliterFailure, SpliterUser>> watchUser() {
    return SpliterUserOdmCollectionReference(_firestore)
        .doc(getFirebaseUser()!.uid)
        .snapshots()
        .map((snapshot) => right<SpliterFailure, SpliterUser>(
            SpliterUserOdm.fromFirestore(snapshot.data!).toDomain()))
        .onErrorReturnWith((error, stackTrace) {
      if (error is PlatformException &&
          error.message!.contains("permission-denied")) {
        return left(const SpliterFailure.insuffientPermission());
      } else {
        return left(const SpliterFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<SpliterFailure, Group>> watchGroup(String groupId) {
    return SpliterUserOdmCollectionReference(_firestore)
        .doc(getFirebaseUser()!.uid)
        .groups
        .doc(groupId)
        .snapshots()
        .map((snapshot) => right<SpliterFailure, Group>(
            SpliterGroup.fromFirestore(snapshot.data!).toDomain()))
        .onErrorReturnWith((error, stackTrace) {
      if (error is PlatformException &&
          error.message!.contains("permission-denied")) {
        return left(const SpliterFailure.insuffientPermission());
      } else {
        return left(const SpliterFailure.unexpected());
      }
    });
  }
}
