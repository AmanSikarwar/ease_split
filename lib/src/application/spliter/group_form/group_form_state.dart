part of 'group_form_bloc.dart';

@freezed
class GroupFormState with _$GroupFormState {
  const factory GroupFormState({
    required Group group,
    required StringSingleLine member,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required bool isDeleting,
    required Option<Either<SpliterFailure, Unit>>
        saveFailureOrSuccessOption,
    required Option<Either<SpliterFailure, Unit>>
        deleteFailureOrSuccessOption,
  }) = _GroupFormState;

  factory GroupFormState.initial() => GroupFormState(
        group: Group.empty(),
        member: StringSingleLine(""),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        isDeleting: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
      );
}
