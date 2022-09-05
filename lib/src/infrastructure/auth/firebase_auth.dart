import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/auth/auth_failure.dart';
import 'package:ease_split/src/domain/auth/auth_interface.dart';
import 'package:ease_split/src/domain/auth/user.dart';
import 'package:ease_split/src/domain/auth/value_objects.dart';
import 'package:ease_split/src/infrastructure/auth/firebase_user_mapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: AuthInterface)
class FirebaseAuthFacade implements AuthInterface {
  @lazySingleton
  final FirebaseAuth _firebaseAuth;

  @lazySingleton
  final GoogleSignIn _googleSignIn;

  @lazySingleton
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
  );

  @override
  Option<SignedInUser> getSignedInUser() {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) {
      return none();
    } else {
      return some(_firebaseUserMapper.toDomain(firebaseUser));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password}) async {
    final emailString =
        emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordString =
        password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
              email: emailString, password: passwordString)
          .then((user) {
        return right(unit);
      });
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          return left(const AuthFailure.invalidEmail());
        case 'wrong-password':
          return left(const AuthFailure.wrongPassword());
        case 'user-not-found':
          return left(const AuthFailure.userNotFound());
        case 'user-disabled':
          return left(const AuthFailure.userDisabled());
        case 'too-many-requests':
          return left(const AuthFailure.tooManyRequests());
        default:
          return left(const AuthFailure.unexpected());
      }
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((userCredential) => right(unit));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "sign_in_canceled":
          return left(const AuthFailure.cancelledByUser());
        case "operation_not_allowed":
          return left(const AuthFailure.operationNotAllowed());
        case "account-exists-with-different-credential":
          return left(const AuthFailure.emailAlreadyInUse());
        case "user-disabled":
          return left(const AuthFailure.userDisabled());
        case "user-not-found":
          return left(const AuthFailure.userNotFound());
        case "network_error":
          return left(const AuthFailure.serverError());
        default:
          return left(const AuthFailure.unexpected());
      }
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password}) async {
    final emailString =
        emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordString =
        password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailString, password: passwordString)
          .then((user) {
        return right(unit);
      });
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          return left(const AuthFailure.weakPassword());
        case 'invalid-email':
          return left(const AuthFailure.invalidEmail());
        case 'email-already-in-use':
          return left(const AuthFailure.emailAlreadyInUse());
        case 'operation-not-allowed':
          return left(const AuthFailure.operationNotAllowed());
        default:
          return left(const AuthFailure.unexpected());
      }
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
}
