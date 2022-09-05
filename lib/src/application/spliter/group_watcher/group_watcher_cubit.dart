import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/domain/spliter/spliter_failures.dart';
import 'package:ease_split/src/domain/spliter/splitter_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'group_watcher_state.dart';
part 'group_watcher_cubit.freezed.dart';

@injectable
class GroupWatcherCubit extends Cubit<GroupWatcherState> {
  final ISpliterRepository _spliterRepository;

  StreamSubscription<Either<SpliterFailure, List<Group>>>?
      groupWatcherSubscription;

  StreamSubscription<Either<SpliterFailure, Group>>? groupSubscription;

  GroupWatcherCubit(this._spliterRepository)
      : super(const GroupWatcherState.initial());

  Future<void> watchAllGroups() async {
    emit(const GroupWatcherState.loadInProgress());
    await groupWatcherSubscription?.cancel();
    groupWatcherSubscription =
        _spliterRepository.watchAllGroups().listen((event) {
      print(event);
      emit(event.fold(
        (f) => GroupWatcherState.loadFailure(f),
        (groups) => GroupWatcherState.groupsLoaded(groups),
      ));
    });
  }

  Future<void> watchGroup(String groupId) async {
    emit(const GroupWatcherState.loadInProgress());
    await groupSubscription?.cancel();
    groupSubscription =
        _spliterRepository.watchGroup(groupId).listen((event) {
      print(event);
      emit(event.fold(
        (f) => GroupWatcherState.loadFailure(f),
        (group) => GroupWatcherState.groupLoaded(group),
      ));
    });
  }

  @override
  Future<void> close() {
    groupWatcherSubscription?.cancel();
    return super.close();
  }
}
