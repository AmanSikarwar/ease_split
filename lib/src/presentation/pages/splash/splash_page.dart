import 'package:auto_route/auto_route.dart';
import 'package:ease_split/src/application/auth/auth_bloc/auth_bloc.dart';
import 'package:ease_split/src/application/spliter/user_checker_cubit/user_checker_cubit.dart';
import 'package:ease_split/src/injection.dart';
import 'package:ease_split/src/presentation/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget implements AutoRouteWrapper {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (value) {},
              authenticated: (value) {
                context.read<UserCheckerCubit>().doesUserExists();
              },
              unauthenticated: (value) =>
                  context.router.replace(const AuthPageRoute()),
            );
          },
        ),
      ],
      child: BlocListener<UserCheckerCubit, UserCheckerState>(
        listener: (context, state) async {
          if (state is UserNotExists) {
            context.router.replace(const ProfilePageRoute());
          } else if (state is UserExists) {
            context.router.replace(const HomePageRoute());
          } else {
            context.router.replace(const AuthPageRoute());
          }
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserCheckerCubit>(),
      child: this,
    );
  }
}
