part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfileFromFirebaseUser() =
      GetProfileFromFirebaseUser;
  const factory ProfileEvent.nameChanged(String name) = NameChanged;
  const factory ProfileEvent.emailChanged(String email) = EmailChanged;

  const factory ProfileEvent.saveButtonTapped() = SaveButtonTapped;

  const factory ProfileEvent.userUpdated(SpliterUser user) =
      UserUpdated;
}
