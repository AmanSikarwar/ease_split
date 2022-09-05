part of 'group_watcher_cubit.dart';

@freezed
class GroupWatcherState with _$GroupWatcherState {
  const factory GroupWatcherState.initial() = IInitial;
  const factory GroupWatcherState.loadInProgress() = LoadInProgress;
  const factory GroupWatcherState.groupsLoaded(List<Group> groups) =
      GroupsLoaded;
  const factory GroupWatcherState.groupLoaded(Group group) =
      GroupLoaded;
  const factory GroupWatcherState.loadFailure(SpliterFailure failure) =
      LoadFailure;
}
