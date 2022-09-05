part of 'user_watcher_cubit.dart';

@freezed
class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState.initial() = Initial;
  const factory UserWatcherState.watchStarted() = WatchStarted;
  const factory UserWatcherState.loadInProgress() = LoadInProgress;
  const factory UserWatcherState.loadSuccess(SpliterUser user) =
      LoadSuccess;
  const factory UserWatcherState.loadFailure(
      SpliterFailure userFailure) = LoadFailure;
}
