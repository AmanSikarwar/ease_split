import 'package:ease_split/src/application/auth/auth_form_bloc/auth_form_bloc.dart';
import 'package:ease_split/src/presentation/pages/auth/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthFormPage extends StatelessWidget {
  const AuthFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormCubit, AuthFormState>(
      builder: (context, state) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: SignInForm(
            isSignInForm: state.isLoginForm,
          ),
        ),
      ),
      listener: (context, state) {},
    );
  }
}
