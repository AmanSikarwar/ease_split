part of "user_checker_cubit.dart";

abstract class UserCheckerState {
  const UserCheckerState();
}

class UserCheckerInitial extends UserCheckerState {
  const UserCheckerInitial();
}

class UserChecking extends UserCheckerState {
  const UserChecking();
}

class UserExists extends UserCheckerState {
  const UserExists();
}

class UserNotExists extends UserCheckerState {
  const UserNotExists();
}

class UserCheckerError extends UserCheckerState {
  final SpliterFailure error;

  const UserCheckerError(this.error);
}
