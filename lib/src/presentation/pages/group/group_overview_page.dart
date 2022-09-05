import 'package:ease_split/src/application/spliter/group_watcher/group_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupOverviewPage extends StatefulWidget {
  final String groupId;
  const GroupOverviewPage({super.key, required this.groupId});

  @override
  State<GroupOverviewPage> createState() => _GroupOverviewPageState();
}

class _GroupOverviewPageState extends State<GroupOverviewPage> {
  @override
  void initState() {
    context.read<GroupWatcherCubit>().watchGroup(widget.groupId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupWatcherCubit, GroupWatcherState>(
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
        groupLoaded: (state) {
          return Stack(
            children: [
              SizedBox(
                height: 140,
                child: Card(
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              state.group.name.getOrCrash(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge,
                              overflow: TextOverflow.fade,
                              softWrap: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text(
                                state.group.category.getOrCrash(),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "${state.group.totalExpenditure.getOrCrash()}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge,
                            ),
                            const Text("Total Expenditure"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 148,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Chip(
                      backgroundColor:
                          Theme.of(context).colorScheme.surfaceTint,
                      label: Text(
                        "You owe ₹0",
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
        orElse: () => const Center(
          child: Text('Something went wrong'),
        ),
      );
    });
  }
}
