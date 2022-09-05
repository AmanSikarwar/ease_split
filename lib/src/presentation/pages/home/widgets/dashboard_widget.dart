import 'package:ease_split/src/application/spliter/user_watcher_cubit/user_watcher_cubit.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  String getOweText(SpliterUser user) {
    if (user.owe.getOrCrash() != 0 && user.owed.getOrCrash() != 0) {
      return "";
    } else {
      return user.owe.getOrCrash() == 0
          ? "You are owed ₹${user.owed.getOrCrash()}"
          : "You owe ₹${user.owe.getOrCrash()}";
    }
  }

  @override
  void initState() {
    context.read<UserWatcherCubit>().watchUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserWatcherCubit, UserWatcherState>(
      builder: (context, state) {
        print(state);
        return state.map(
          initial: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          watchStarted: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) => Stack(
            children: [
              SizedBox(
                height: 140,
                child: Card(
                  margin: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 36,
                          child: Text(
                            state.user.name.getOrCrash()[0],
                            style:
                                Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Text(
                                "₹${state.user.totalExpenditure.getOrCrash().toString()}0000000",
                                style: const TextStyle(
                                  fontSize: 32,
                                ),
                              ),
                            ),
                            const Text("Your have spent")
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
                        getOweText(state.user),
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
          ),
          loadFailure: (state) => const Text("An error occured"),
        );
      },
    );
  }
}
