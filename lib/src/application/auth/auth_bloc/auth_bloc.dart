import 'dart:async';

import 'package:ease_split/src/domain/auth/auth_interface.dart';
import 'package:ease_split/src/domain/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthInterface _authInterface;

  AuthBloc(this._authInterface) : super(const AuthState.initial()) {
    on<AuthCheckRequested>(_authCheckRequested);
    on<SignedOut>(_signedOut);
  }

  FutureOr<void> _authCheckRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOption = _authInterface.getSignedInUser();
    emit(userOption.fold(
      () => const AuthState.unauthenticated(),
      (user) => AuthState.authenticated(user),
    ));
  }

  FutureOr<void> _signedOut(SignedOut event, Emitter<AuthState> emit) {
    _authInterface.signOut();
    emit(const AuthState.unauthenticated());
  }
}
