import 'package:ease_split/src/application/auth/auth_form_bloc/auth_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  final bool isSignInForm;

  const SignInForm({
    Key? key,
    required this.isSignInForm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthFormCubit, AuthFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Center(
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: FlutterLogo(
                    size: size.height * 0.2,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                  ),
                  autocorrect: false,
                  onChanged: (value) =>
                      BlocProvider.of<AuthFormCubit>(context)
                          .emailChanged(value),
                  validator: (value) =>
                      BlocProvider.of<AuthFormCubit>(context)
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (failure) => failure.maybeMap(
                              invalidEmail: (_) => "Invalid Email",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) =>
                      BlocProvider.of<AuthFormCubit>(context)
                          .passwordChanged(value),
                  validator: (value) =>
                      BlocProvider.of<AuthFormCubit>(context)
                          .state
                          .password
                          .value
                          .fold(
                            (failure) => failure.maybeMap(
                              invalidPassword: (_) =>
                                  "Invalid Password",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      isSignInForm
                          ? context
                              .read<AuthFormCubit>()
                              .signInWithEmailAndPasswordPressed()
                          : context
                              .read<AuthFormCubit>()
                              .registerWithEmailAndPasswordPressed();
                    },
                    child: Text(
                      isSignInForm ? "Sign In" : "Sign Up",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                if (isSignInForm) ...[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: const Text("Forgot Password?"),
                      onPressed: () =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .inverseSurface,
                          content: const Text(
                              "This feature is not yet implemented"),
                        ),
                      ),
                    ),
                  ),
                ],
                if (state.isSubmitting) ...[
                  const SizedBox(height: 8),
                  const LinearProgressIndicator(),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
