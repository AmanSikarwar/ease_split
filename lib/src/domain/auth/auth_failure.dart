import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.serverError() = ServerError;

  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;

  const factory AuthFailure.invalidEmail() = InvalidEmail;

  const factory AuthFailure.invalidPassword() = InvalidPassword;

  const factory AuthFailure.userNotFound() = UserNotFound;

  const factory AuthFailure.userDisabled() = UserDisabled;

  const factory AuthFailure.weakPassword() = WeakPassword;

  const factory AuthFailure.wrongPassword() = WrongPassword;

  const factory AuthFailure.tooManyRequests() = TooManyRequests;

  const factory AuthFailure.operationNotAllowed() = OperationNotAllowed;

  const factory AuthFailure.unexpected() = Unexpected;

  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
}
