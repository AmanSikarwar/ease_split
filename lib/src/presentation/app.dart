import 'package:ease_split/src/application/auth/auth_bloc/auth_bloc.dart';
import 'package:ease_split/src/application/auth/auth_form_bloc/auth_form_bloc.dart';
import 'package:ease_split/src/application/spliter/group_watcher/group_watcher_cubit.dart';
import 'package:ease_split/src/application/spliter/profile_bloc/profile_bloc.dart';
import 'package:ease_split/src/application/spliter/user_watcher_cubit/user_watcher_cubit.dart';
import 'package:ease_split/src/injection.dart';
import 'package:ease_split/src/presentation/router.gr.dart';
import 'package:ease_split/src/presentation/theme/color_schemes.dart';
import 'package:ease_split/src/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<AuthFormCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserWatcherCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GroupWatcherCubit>(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        title: 'Split Among',
        theme: appTheme,
        darkTheme: ThemeData(
          colorScheme: darkColorScheme,
          useMaterial3: true,
        ),
      ),
    );
  }
}
