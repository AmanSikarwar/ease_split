import 'package:ease_split/firebase_options.dart';
import 'package:ease_split/src/injection.dart';
import 'package:ease_split/src/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  runApp(App());
}
