part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required UniqueId id,
    required StringSingleLine name,
    required EmailAddress email,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<SpliterFailure, Unit>>
        saveFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        id: UniqueId(),
        name: StringSingleLine(""),
        email: EmailAddress(""),
        showErrorMessages: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
