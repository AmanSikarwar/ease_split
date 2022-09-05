part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged({required String email}) =
      EmailChanged;
  const factory AuthFormEvent.passwordChanged({required String password}) =
      PasswordChanged;
  const factory AuthFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory AuthFormEvent.toggleFormTypePressed(
      {required bool isSignInForm}) = ToggleFormTypePressed;
}
