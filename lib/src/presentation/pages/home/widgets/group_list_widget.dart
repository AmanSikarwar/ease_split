import 'package:ease_split/src/application/spliter/group_watcher/group_watcher_cubit.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupListView extends StatefulWidget {
  const GroupListView({super.key});

  @override
  State<GroupListView> createState() => _GroupListViewState();
}

class _GroupListViewState extends State<GroupListView> {
  @override
  void initState() {
    context.read<GroupWatcherCubit>().watchAllGroups();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<GroupWatcherCubit, GroupWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            initial: (state) => const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loadFailure: (state) {
              return const SliverToBoxAdapter(
                child: Center(
                  child: Text('Something went wrong'),
                ),
              );
            },
            loadInProgress: (state) => const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            groupsLoaded: (state) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final group = state.groups[index];
                    return GroupTile(group: group);
                  },
                  childCount: state.groups.length,
                ),
              );
            },
            orElse: () => const SliverToBoxAdapter(
              child: Center(
                child: Text('Something went wrong'),
              ),
            ),
          );
        },
      ),
    );
  }
}

class GroupTile extends StatelessWidget {
  final Group group;
  const GroupTile({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: false,
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.group,
        ),
      ),
      title: Text(group.name.getOrCrash()),
      trailing: Text(
        "₹${group.totalExpenditure.getOrCrash().toString()}",
      ),
    );
  }
}
