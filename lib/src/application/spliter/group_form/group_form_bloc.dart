import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/domain/spliter/spliter_failures.dart';
import 'package:ease_split/src/domain/spliter/splitter_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'group_form_state.dart';
part 'group_form_event.dart';
part 'group_form_bloc.freezed.dart';

@injectable
class GroupFormBloc extends Bloc<GroupFormEvent, GroupFormState> {
  final ISpliterRepository spliterRepository;
  GroupFormBloc(this.spliterRepository)
      : super(GroupFormState.initial()) {
    on<Initialized>((event, emit) async {
      event.initialGroupOption.fold(
        () => emit(state.copyWith(
          isEditing: false,
          group: Group.empty(),
          saveFailureOrSuccessOption: none(),
        )),
        (initialGroup) => emit(state.copyWith(
          isEditing: true,
          group: initialGroup,
          saveFailureOrSuccessOption: none(),
        )),
      );
    });

    on<NameChanged>(
      (event, emit) => emit(state.copyWith(
        group: state.group.copyWith(name: StringSingleLine(event.name)),
        saveFailureOrSuccessOption: none(),
      )),
    );

    on<DescriptionChanged>(
      (event, emit) => emit(state.copyWith(
        group: state.group
            .copyWith(description: MaxLengthString(event.description)),
        saveFailureOrSuccessOption: none(),
      )),
    );

    on<CategoryChanged>(
      (event, emit) => emit(state.copyWith(
        group: state.group
            .copyWith(category: StringSingleLine(event.category)),
        saveFailureOrSuccessOption: none(),
      )),
    );

    on<MemberChanged>(
      (event, emit) => emit(state.copyWith(
        member: StringSingleLine(event.member),
        saveFailureOrSuccessOption: none(),
      )),
    );

    on<MemberRemoved>(
      (event, emit) => emit(state.copyWith(
        group: state.group.copyWith(
          members: state.group.members
              .where((member) => member != event.name)
              .toList(),
        ),
        saveFailureOrSuccessOption: none(),
      )),
    );

    on<Created>(
      (event, emit) async {
        Either<SpliterFailure, Unit> failureOrSuccess;
        if (state.group.name.isValid() &&
            state.group.description.isValid() &&
            state.group.category.isValid()) {
          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));
          failureOrSuccess =
              await spliterRepository.createGroup(state.group);
        } else {
          failureOrSuccess = left(const SpliterFailure.invalidGroup());
        }
        emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
    );

    on<Updated>(
      (event, emit) async {
        Either<SpliterFailure, Unit> failureOrSuccess;
        if (state.group.name.isValid() &&
            state.group.description.isValid() &&
            state.group.category.isValid()) {
          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));
          failureOrSuccess =
              await spliterRepository.updateGroup(state.group);
        } else {
          failureOrSuccess = left(const SpliterFailure.invalidGroup());
        }
        emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      },
    );

    on<MemberAdded>(
      (event, emit) {
        if (event.name.isValid() &&
            !state.group.members.contains(event.name)) {
          emit(state.copyWith(
            group: state.group.copyWith(
              members: List.from(state.group.members)..add(event.name),
            ),
            saveFailureOrSuccessOption: none(),
          ));
        }
      },
    );
  }
}
