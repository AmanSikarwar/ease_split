import 'package:auto_route/auto_route.dart';
import 'package:ease_split/src/application/auth/auth_form_bloc/auth_form_bloc.dart';
import 'package:ease_split/src/presentation/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<AuthFormCubit, AuthFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  content: Text(
                    failure.maybeMap(
                      emailAlreadyInUse: (_) => "Email already in use",
                      invalidEmailAndPasswordCombination: (value) =>
                          "Incorrect Email or Password",
                      weakPassword: (_) => "Password is too weak",
                      wrongPassword: (_) => "Wrong Password",
                      operationNotAllowed: (_) =>
                          "Operation not Allowed",
                      serverError: (_) => "Unexped Server Error",
                      tooManyRequests: (_) =>
                          "Too many requests, try again later",
                      userNotFound: (_) => "User not found",
                      userDisabled: (_) => "User Disabled",
                      cancelledByUser: (value) => "Sign in Cancelled!",
                      orElse: () => "Unexpected Error Occured",
                    ),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onError,
                    ),
                  ),
                ),
              ),
            },
            (_) => context.router.navigate(const SplashPageRoute()),
          ),
        );
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24),
                child: Hero(
                  tag: "logo",
                  child: FlutterLogo(
                    size: size.height * 0.25,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.1),
              const Text(
                'Split Ease',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: size.height * 0.25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthFormCubit>(context)
                            .toggleFormType(false);
                        context.router.push(const AuthFormPageRoute());
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthFormCubit>(context)
                            .toggleFormType(true);
                        context.router.push(const AuthFormPageRoute());
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () => context
                    .read<AuthFormCubit>()
                    .signInWithGooglePressed(),
                icon: const FaIcon(FontAwesomeIcons.google),
                label: const Text(
                  "Continue with Google",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
