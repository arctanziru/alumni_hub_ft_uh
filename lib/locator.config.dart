// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'data/api.dart' as _i420;
import 'features/auth/data/auth_remote_data_source.dart' as _i516;
import 'features/auth/domain/auth_repository.dart' as _i260;
import 'features/event/bloc/event_bloc.dart' as _i859;
import 'features/event/data/event_remote_data_source.dart' as _i163;
import 'features/event/domain/event_repository.dart' as _i742;
import 'features/news/bloc/news_bloc.dart' as _i662;
import 'features/news/data/news_remote_data_source.dart' as _i901;
import 'features/news/domain/news_repository.dart' as _i220;
import 'features/user/bloc/user_bloc.dart' as _i898;
import 'features/user/data/user_local_data_source.dart' as _i225;
import 'features/user/data/user_remote_data_source.dart' as _i444;
import 'features/user/domain/user_repository.dart' as _i902;
import 'features/vacancy/bloc/vacancy_bloc.dart' as _i379;
import 'features/vacancy/data/vacancy_remote_data_source.dart' as _i785;
import 'features/vacancy/domain/vacancy_repository.dart' as _i731;
import 'locator.dart' as _i775;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appModule.preferences,
    preResolve: true,
  );
  gh.lazySingleton<_i361.Dio>(() => appModule.dio());
  gh.lazySingleton<_i420.Api>(() => _i420.Api(gh<_i361.Dio>()));
  gh.singleton<_i225.UserLocalDataSource>(
      () => _i225.UserLocalDataSource(gh<_i460.SharedPreferences>()));
  gh.singleton<_i516.AuthRemoteDataSource>(
      () => _i516.AuthRemoteDataSource(gh<_i420.Api>()));
  gh.singleton<_i901.NewsRemoteDataSource>(
      () => _i901.NewsRemoteDataSource(gh<_i420.Api>()));
  gh.singleton<_i444.UserRemoteDataSource>(
      () => _i444.UserRemoteDataSource(gh<_i420.Api>()));
  gh.singleton<_i785.VacancyRemoteDataSource>(
      () => _i785.VacancyRemoteDataSource(gh<_i420.Api>()));
  gh.singleton<_i163.EventRemoteDataSource>(
      () => _i163.EventRemoteDataSource(gh<_i420.Api>()));
  gh.lazySingleton<_i731.VacancyRepository>(
      () => _i731.VacancyRepositoryImpl(gh<_i785.VacancyRemoteDataSource>()));
  gh.lazySingleton<_i742.EventRepository>(
      () => _i742.EventRepositoryImpl(gh<_i163.EventRemoteDataSource>()));
  gh.factory<_i859.EventBloc>(
      () => _i859.EventBloc(gh<_i742.EventRepository>()));
  gh.lazySingleton<_i902.UserRepository>(() => _i902.UserRepositoryImpl(
        userRemoteDataSource: gh<_i444.UserRemoteDataSource>(),
        userLocalDataSource: gh<_i225.UserLocalDataSource>(),
      ));
  gh.factory<_i379.VacancyBloc>(
      () => _i379.VacancyBloc(gh<_i731.VacancyRepository>()));
  gh.lazySingleton<_i260.AuthRepository>(() => _i260.AuthRepositoryImpl(
      authRemoteDataSource: gh<_i516.AuthRemoteDataSource>()));
  gh.lazySingleton<_i220.NewsRepository>(
      () => _i220.NewsRepositoryImpl(gh<_i901.NewsRemoteDataSource>()));
  gh.factory<_i662.NewsBloc>(() => _i662.NewsBloc(gh<_i220.NewsRepository>()));
  gh.factory<_i898.UserBloc>(() => _i898.UserBloc(
        gh<_i902.UserRepository>(),
        gh<_i260.AuthRepository>(),
      ));
  return getIt;
}

class _$AppModule extends _i775.AppModule {}
