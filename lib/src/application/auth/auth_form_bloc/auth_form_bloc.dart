import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/auth/auth_failure.dart';
import 'package:ease_split/src/domain/auth/auth_interface.dart';
import 'package:ease_split/src/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_form_state.dart';
part 'auth_form_event.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormCubit extends Cubit<AuthFormState> {
  final AuthInterface _authInterface;
  AuthFormCubit(this._authInterface) : super(AuthFormState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccessOption: none(),
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
      password: Password(password),
      authFailureOrSuccessOption: none(),
    ));
  }

  void registerWithEmailAndPasswordPressed() async {
    emit(state.copyWith(
      isSubmitting: true,
      showErrorMessages: true,
      authFailureOrSuccessOption: none(),
    ));
    if (state.emailAddress.isValid() && state.password.isValid()) {
      final authFailureOrSuccess =
          await _authInterface.signUpWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(authFailureOrSuccess),
      ));
    } else {
      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: none(),
      ));
    }
  }

  void signInWithEmailAndPasswordPressed() async {
    emit(state.copyWith(
      showErrorMessages: true,
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    if (state.emailAddress.isValid() && state.password.isValid()) {
      final either = await _authInterface.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(either),
      ));
    } else {
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        showErrorMessages: true,
      ));
    }
  }

  void signInWithGooglePressed() async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authInterface.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  void toggleFormType(bool isSignInForm) {
    emit(
      state.copyWith(
        isLoginForm: isSignInForm,
        authFailureOrSuccessOption: none(),
      ),
    );
  }
}

// @injectable
// class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
//   final AuthInterface _authInterface;

//   AuthFormBloc(this._authInterface) : super(AuthFormState.initial()) {
//     on<EmailChanged>(
//       (event, emit) => emit(
//         state.copyWith(
//           emailAddress: EmailAddress(event.email),
//           authFailureOrSuccessOption: none(),
//         ),
//       ),
//     );

//     on<PasswordChanged>(
//       (event, emit) => emit(
//         state.copyWith(
//           password: Password(event.password),
//           authFailureOrSuccessOption: none(),
//         ),
//       ),
//     );

//     on<RegisterWithEmailAndPasswordPressed>(
//         (event, emit) => _mapRegisterWithEmailandPasswordPressed);

//     on<SignInWithEmailAndPasswordPressed>(
//         (event, emit) => _mapSignInWithEmailandPasswordPressed);

//     on<SignInWithGooglePressed>(_mapSignInWithGoodlePressed);

//     on<ToggleFormTypePressed>(
//       (event, emit) => emit(
//         state.copyWith(
//           isLoginForm: event.isSignInForm,
//           authFailureOrSuccessOption: none(),
//         ),
//       ),
//     );
//   }

//   _mapRegisterWithEmailandPasswordPressed(
//     RegisterWithEmailAndPasswordPressed event,
//     Emitter<AuthFormState> emit,
//   ) async {
//     Either<AuthFailure, Unit> failureOrSuccess;
//     if (state.emailAddress.isValid() && state.password.isValid()) {
//       emit(state.copyWith(
//         isSubmitting: true,
//         authFailureOrSuccessOption: none(),
//       ));
//       failureOrSuccess = await _authInterface.signUpWithEmailAndPassword(
//         emailAddress: state.emailAddress,
//         password: state.password,
//       );
//       print(failureOrSuccess);
//       emit(state.copyWith(
//         isSubmitting: false,
//         showErrorMessages: true,
//         authFailureOrSuccessOption: optionOf(failureOrSuccess),
//       ));
//     } else {
//       emit(state.copyWith(
//         isSubmitting: false,
//         showErrorMessages: true,
//       ));
//     }
//   }

//   _mapSignInWithEmailandPasswordPressed(
//     SignInWithEmailAndPasswordPressed event,
//     Emitter<AuthFormState> emit,
//   ) async {
//     print("Called");
//     Either<AuthFailure, Unit> failureOrSuccess;
//     if (state.emailAddress.isValid() && state.password.isValid()) {
//       emit(state.copyWith(
//         isSubmitting: true,
//         authFailureOrSuccessOption: none(),
//       ));
//       failureOrSuccess = await _authInterface.signInWithEmailAndPassword(
//         emailAddress: state.emailAddress,
//         password: state.password,
//       );
//       emit(state.copyWith(
//         isSubmitting: false,
//         showErrorMessages: true,
//         authFailureOrSuccessOption: optionOf(failureOrSuccess),
//       ));
//     }
//     emit(state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: true,
//     ));
//     print(emit);
//   }

//   _mapSignInWithGoodlePressed(
//     SignInWithGooglePressed event,
//     Emitter<AuthFormState> emit,
//   ) async {
//     emit(state.copyWith(
//       isSubmitting: true,
//       authFailureOrSuccessOption: none(),
//     ));
//     final failureOrSuccess = await _authInterface.signInWithGoogle();
//     emit(state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: true,
//       authFailureOrSuccessOption: optionOf(failureOrSuccess),
//     ));
//   }
// }
