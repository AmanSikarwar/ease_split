import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ease_split/src/presentation/pages/auth/auth_form_page.dart';
import 'package:ease_split/src/presentation/pages/auth/auth_page.dart';
import 'package:ease_split/src/presentation/pages/group/group_form_page.dart';
import 'package:ease_split/src/presentation/pages/home/homepage.dart';
import 'package:ease_split/src/presentation/pages/profile/create_profile_page.dart';
import 'package:ease_split/src/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: AuthPage),
  AutoRoute(page: AuthFormPage),
  AutoRoute(page: ProfilePage),
  AutoRoute(page: HomePage),
  AutoRoute(page: GroupFormPage)
])
class $AppRouter {}
