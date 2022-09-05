import 'package:ease_split/src/domain/spliter/spliter_failures.dart';
import 'package:ease_split/src/domain/spliter/splitter_repository_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'user_checker_state.dart';

@injectable
class UserCheckerCubit extends Cubit<UserCheckerState> {
  final ISpliterRepository spliterRepository;

  UserCheckerCubit(this.spliterRepository)
      : super(const UserCheckerInitial());

  doesUserExists() async {
    emit(const UserChecking());
    final exists = await spliterRepository.checkSpliterUser();
    exists.fold(
      (failure) => emit(UserCheckerError(failure)),
      (exists) => exists
          ? emit(const UserExists())
          : emit(const UserNotExists()),
    );
    print(exists);
  }
}
