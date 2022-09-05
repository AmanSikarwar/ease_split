import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/auth/value_objects.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/domain/spliter/spliter_failures.dart';
import 'package:ease_split/src/domain/spliter/splitter_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FirebaseAuth firebaseAuth;
  final ISpliterRepository spliterRepository;
  ProfileBloc(
    this.spliterRepository,
    this.firebaseAuth,
  ) : super(ProfileState.initial()) {
    on<GetProfileFromFirebaseUser>(
      (event, emit) async {
        final firebaseUser = firebaseAuth.currentUser;
        if (firebaseUser != null) {
          if (firebaseUser.displayName != null &&
              firebaseUser.displayName!.isNotEmpty) {
            emit(state.copyWith(
              name: StringSingleLine(firebaseUser.displayName!),
            ));
          }
          emit(state.copyWith(
            email: EmailAddress(firebaseUser.email!),
            id: UniqueId.fromUniqueString(firebaseUser.uid),
          ));
        }
      },
    );

    on<NameChanged>(
      (event, emit) => emit(state.copyWith(
        name: StringSingleLine(event.name),
        showErrorMessages: true,
      )),
    );

    on<EmailChanged>(
      (event, emit) => emit(state.copyWith(
        email: EmailAddress(event.email),
        showErrorMessages: true,
      )),
    );

    on<SaveButtonTapped>(
      (event, emit) async {
        emit(state.copyWith(
          isSaving: true,
          showErrorMessages: true,
        ));
        if (state.name.isValid() &&
            state.email.isValid() &&
            state.id.isValid()) {
          final either = await spliterRepository.creatUser(SpliterUser(
            id: state.id,
            name: state.name,
            email: state.email,
            owe: PositiveNumber(0),
            owed: PositiveNumber(0),
            joinedOn: DateTime.now(),
            totalExpenditure: PositiveNumber(0),
          ));
          emit(state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: some(either),
          ));
        }
      },
    );
  }
}
