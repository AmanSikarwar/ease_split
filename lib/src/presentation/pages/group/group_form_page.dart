import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:ease_split/src/application/spliter/group_form/group_form_bloc.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:ease_split/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupFormPage extends StatefulWidget implements AutoRouteWrapper {
  final dartz.Option<Group> groupOption;

  const GroupFormPage({super.key, required this.groupOption});

  @override
  State<GroupFormPage> createState() => _GroupFormPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<GroupFormBloc>()..add(Initialized(groupOption)),
      child: this,
    );
  }
}

class _GroupFormPageState extends State<GroupFormPage> {
  TextEditingController _member = TextEditingController();

  @override
  void initState() {
    _member = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroupFormBloc, GroupFormState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: state.isEditing
                ? const Text('Edit Group')
                : const Text('Create Group'),
            centerTitle: true,
          ),
          body: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Group Name"),
                  ),
                  initialValue: state.group.name.getOrElse(""),
                  onChanged: (value) => context
                      .read<GroupFormBloc>()
                      .add(GroupFormEvent.nameChanged(value)),
                  validator: (_) => context
                      .read<GroupFormBloc>()
                      .state
                      .group
                      .name
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'Cannot be empty',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Group Description"),
                  ),
                  initialValue: state.group.description.getOrElse(""),
                  onChanged: (value) => context
                      .read<GroupFormBloc>()
                      .add(GroupFormEvent.descriptionChanged(value)),
                  validator: (_) => context
                      .read<GroupFormBloc>()
                      .state
                      .group
                      .description
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'Cannot be empty',
                          exceedingLength: (_) => 'Too long',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Group Category"),
                  ),
                  initialValue: state.group.category.getOrElse(""),
                  onChanged: (value) => context
                      .read<GroupFormBloc>()
                      .add(GroupFormEvent.categoryChanged(value)),
                  validator: (_) => context
                      .read<GroupFormBloc>()
                      .state
                      .group
                      .category
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'Cannot be empty',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _member,
                  decoration: InputDecoration(
                    label: const Text("Add Member"),
                    isDense: true,
                    suffix: IconButton(
                      color: Theme.of(context).colorScheme.primary,
                      icon: const Icon(Icons.add),
                      onPressed: () => context
                          .read<GroupFormBloc>()
                          .add(
                            GroupFormEvent.memberAdded(state.member),
                          ),
                    ),
                  ),
                  onChanged: (value) => context
                      .read<GroupFormBloc>()
                      .add(GroupFormEvent.memberChanged(value)),
                  validator: (_) => context
                      .read<GroupFormBloc>()
                      .state
                      .member
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (_) => 'Cannot be empty',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 24),
                ...state.group.members
                    .map(
                      (member) => ListTile(
                        title: Text(member.getOrCrash()),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            context.read<GroupFormBloc>().add(
                                GroupFormEvent.memberRemoved(member));
                            _member.clear();
                          },
                        ),
                      ),
                    )
                    .toList(),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => state.isEditing
                      ? context
                          .read<GroupFormBloc>()
                          .add(const GroupFormEvent.updated())
                      : context
                          .read<GroupFormBloc>()
                          .add(const GroupFormEvent.created()),
                  child: Text(
                    state.isEditing ? "Update Group" : "Create Group",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                if (state.isSaving) ...[const LinearProgressIndicator()]
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  content: Text(
                    failure.maybeMap(
                      empty: (_) => 'Cannot be empty',
                      insuffientPermission: (_) =>
                          'Insuffient Permission',
                      unexpected: (_) => 'Unexpected Error',
                      orElse: () {
                        return "Unexpected error";
                      },
                    ),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onError),
                  ),
                ),
              );
            },
            (_) {
              context.router.pop();
            },
          ),
        );
      },
      listenWhen: (previous, current) =>
          previous.saveFailureOrSuccessOption !=
          current.saveFailureOrSuccessOption,
    );
  }
}
