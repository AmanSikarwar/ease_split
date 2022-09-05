// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:dartz/dartz.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../domain/spliter/entities.dart' as _i10;
import 'pages/auth/auth_form_page.dart' as _i3;
import 'pages/auth/auth_page.dart' as _i2;
import 'pages/group/group_form_page.dart' as _i6;
import 'pages/home/homepage.dart' as _i5;
import 'pages/profile/create_profile_page.dart' as _i4;
import 'pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.WrappedRoute(child: const _i1.SplashPage()));
    },
    AuthPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthPage());
    },
    AuthFormPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AuthFormPage());
    },
    ProfilePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    },
    HomePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    GroupFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<GroupFormPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.WrappedRoute(
              child: _i6.GroupFormPage(
                  key: args.key, groupOption: args.groupOption)));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashPageRoute.name, path: '/'),
        _i7.RouteConfig(AuthPageRoute.name, path: '/auth-page'),
        _i7.RouteConfig(AuthFormPageRoute.name, path: '/auth-form-page'),
        _i7.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i7.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i7.RouteConfig(GroupFormPageRoute.name, path: '/group-form-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthPageRoute extends _i7.PageRouteInfo<void> {
  const AuthPageRoute() : super(AuthPageRoute.name, path: '/auth-page');

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i3.AuthFormPage]
class AuthFormPageRoute extends _i7.PageRouteInfo<void> {
  const AuthFormPageRoute()
      : super(AuthFormPageRoute.name, path: '/auth-form-page');

  static const String name = 'AuthFormPageRoute';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfilePageRoute extends _i7.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i6.GroupFormPage]
class GroupFormPageRoute extends _i7.PageRouteInfo<GroupFormPageRouteArgs> {
  GroupFormPageRoute(
      {_i8.Key? key, required _i9.Option<_i10.Group> groupOption})
      : super(GroupFormPageRoute.name,
            path: '/group-form-page',
            args: GroupFormPageRouteArgs(key: key, groupOption: groupOption));

  static const String name = 'GroupFormPageRoute';
}

class GroupFormPageRouteArgs {
  const GroupFormPageRouteArgs({this.key, required this.groupOption});

  final _i8.Key? key;

  final _i9.Option<_i10.Group> groupOption;

  @override
  String toString() {
    return 'GroupFormPageRouteArgs{key: $key, groupOption: $groupOption}';
  }
}
