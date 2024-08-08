import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/data/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'locator.config.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<AppNavigation>(() => AppNavigation());
  await configureDependencies();
}

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async => $initGetIt(locator);

@module
abstract class AppModule {
  @lazySingleton
  Dio dio() => dioConfig();

  @preResolve
  Future<SharedPreferences> get preferences => SharedPreferences.getInstance();
}
