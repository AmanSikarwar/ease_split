import 'package:auto_route/auto_route.dart';
import 'package:ease_split/src/application/spliter/profile_bloc/profile_bloc.dart';
import 'package:ease_split/src/presentation/router.gr.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    setState(() {
      context
          .read<ProfileBloc>()
          .add(const GetProfileFromFirebaseUser());
    });
    nameController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Update your Profile"),
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (nameController.text.isEmpty) {
            nameController.text = state.name.getOrElse("");
          }
          if (emailController.text.isEmpty) {
            emailController.text = state.email.getOrElse("");
          }
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
                TextFormField(
                    autocorrect: false,
                    autofocus: true,
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      counter: const SizedBox.shrink(),
                    ),
                    enableIMEPersonalizedLearning: true,
                    enableSuggestions: true,
                    keyboardType: TextInputType.name,
                    maxLength: 30,
                    onChanged: (value) => context
                        .read<ProfileBloc>()
                        .add(NameChanged(value)),
                    validator: (value) => context
                        .read<ProfileBloc>()
                        .state
                        .name
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            empty: (_) => "Name should not be Empty",
                            orElse: () => null,
                          ),
                          (_) => null,
                        )),
                const SizedBox(height: 24),
                TextFormField(
                    enabled: false,
                    autocorrect: false,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onChanged: (value) => context
                        .read<ProfileBloc>()
                        .add(EmailChanged(value)),
                    validator: (value) => context
                        .read<ProfileBloc>()
                        .state
                        .email
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            invalidEmail: (_) => "Invalid Email",
                            orElse: () => null,
                          ),
                          (_) => null,
                        )),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton.icon(
                    onPressed: () => context
                        .read<ProfileBloc>()
                        .add(const SaveButtonTapped()),
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text("Continue"),
                  ),
                ),
                const SizedBox(height: 24),
                if (state.isSaving)
                  const LinearProgressIndicator(
                    minHeight: 4,
                  ),
              ],
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
                    content: Text(failure.maybeMap(
                      empty: (_) => "Name should not be Empty",
                      insuffientPermission: (_) =>
                          "Insuffient Permission to update profile",
                      unabletoCreate: (_) => "Unable to create profile",
                      orElse: () => "Unexpected Error Occured",
                    )),
                  ),
                );
              },
              (_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Profile Updated"),
                  ),
                );
                context.router.replace(const HomePageRoute());
              },
            ),
          );
        },
      ),
    );
  }
}
