part of 'group_form_bloc.dart';

@freezed
class GroupFormEvent with _$GroupFormEvent {
  const factory GroupFormEvent.initialized(
      Option<Group> initialGroupOption) = Initialized;
  const factory GroupFormEvent.nameChanged(String name) = NameChanged;
  const factory GroupFormEvent.descriptionChanged(String description) =
      DescriptionChanged;
  const factory GroupFormEvent.categoryChanged(String category) =
      CategoryChanged;
  const factory GroupFormEvent.memberChanged(String member) =
      MemberChanged;
  const factory GroupFormEvent.memberAdded(StringSingleLine name) =
      MemberAdded;
  const factory GroupFormEvent.memberRemoved(StringSingleLine name) =
      MemberRemoved;
  const factory GroupFormEvent.totalExpenditureChanged(
      double totalExpenditure) = TotalExpenditureChanged;
  const factory GroupFormEvent.created() = Created;
  const factory GroupFormEvent.updated() = Updated;
  const factory GroupFormEvent.deleted() = Deleted;
}
