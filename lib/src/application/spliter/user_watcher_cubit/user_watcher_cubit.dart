import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/domain/spliter/spliter_failures.dart';
import 'package:ease_split/src/domain/spliter/splitter_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'user_watcher_state.dart';
part 'user_watcher_cubit.freezed.dart';

@injectable
class UserWatcherCubit extends Cubit<UserWatcherState> {
  final ISpliterRepository _spliterRepository;

  StreamSubscription<Either<SpliterFailure, SpliterUser>>?
      _userStreamSubscription;
  UserWatcherCubit(this._spliterRepository)
      : super(const UserWatcherState.initial());

  Future<void> watchUser() async {
    emit(const UserWatcherState.watchStarted());
    await _userStreamSubscription?.cancel();
    _userStreamSubscription = _spliterRepository
        .watchUser()
        .listen((failureOrUser) => failureOrUser.fold(
              (failure) => emit(UserWatcherState.loadFailure(failure)),
              (user) => emit(UserWatcherState.loadSuccess(user)),
            ));
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
