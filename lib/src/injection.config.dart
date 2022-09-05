// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc/auth_bloc.dart' as _i16;
import 'application/auth/auth_form_bloc/auth_form_bloc.dart' as _i17;
import 'application/spliter/group_form/group_form_bloc.dart' as _i14;
import 'application/spliter/group_watcher/group_watcher_cubit.dart' as _i15;
import 'application/spliter/profile_bloc/profile_bloc.dart' as _i9;
import 'application/spliter/user_checker_cubit/user_checker_cubit.dart' as _i10;
import 'application/spliter/user_watcher_cubit/user_watcher_cubit.dart' as _i11;
import 'domain/auth/auth_interface.dart' as _i12;
import 'domain/spliter/splitter_repository_interface.dart' as _i7;
import 'infrastructure/auth/firebase_auth.dart' as _i13;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i5;
import 'infrastructure/core/firebase_injectable_module.dart' as _i18;
import 'infrastructure/spliter/firestore_repository.dart' as _i8;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.FirebaseUserMapper>(() => _i5.FirebaseUserMapper());
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.ISpliterRepository>(
      () => _i8.SpliterRepository(get<_i4.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.factory<_i9.ProfileBloc>(() =>
      _i9.ProfileBloc(get<_i7.ISpliterRepository>(), get<_i3.FirebaseAuth>()));
  gh.factory<_i10.UserCheckerCubit>(
      () => _i10.UserCheckerCubit(get<_i7.ISpliterRepository>()));
  gh.factory<_i11.UserWatcherCubit>(
      () => _i11.UserWatcherCubit(get<_i7.ISpliterRepository>()));
  gh.lazySingleton<_i12.AuthInterface>(
      () => _i13.FirebaseAuthFacade(get<_i3.FirebaseAuth>(),
          get<_i6.GoogleSignIn>(), get<_i5.FirebaseUserMapper>()),
      registerFor: {_prod});
  gh.factory<_i14.GroupFormBloc>(
      () => _i14.GroupFormBloc(get<_i7.ISpliterRepository>()));
  gh.factory<_i15.GroupWatcherCubit>(
      () => _i15.GroupWatcherCubit(get<_i7.ISpliterRepository>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i12.AuthInterface>()));
  gh.factory<_i17.AuthFormCubit>(
      () => _i17.AuthFormCubit(get<_i12.AuthInterface>()));
  return get;
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
