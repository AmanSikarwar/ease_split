import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:ease_split/src/application/spliter/group_watcher/group_watcher_cubit.dart';
import 'package:ease_split/src/presentation/pages/home/widgets/dashboard_widget.dart';
import 'package:ease_split/src/presentation/pages/home/widgets/group_list_widget.dart';
import 'package:ease_split/src/presentation/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GroupWatcherCubit>().watchAllGroups();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplitEase'),
        centerTitle: true,
      ),
      body: BlocBuilder<GroupWatcherCubit, GroupWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            initial: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (state) => const Center(
              child: Text('Something went wrong'),
            ),
            loadInProgress: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
            groupsLoaded: (state) {
              return CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(child: DashBoard()),
                  const SliverToBoxAdapter(child: SizedBox(height: 12)),
                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final group = state.groups[index];
                      return GroupTile(group: group);
                    },
                    childCount: state.groups.length,
                  )),
                ],
              );
            },
            orElse: () => const Center(
              child: Text('Something went wrong'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.router
            .push(GroupFormPageRoute(groupOption: dartz.none())),
        label: const Text('Add Group'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
