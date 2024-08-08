import 'package:alumni_hub_ft_uh/bloc_providers.dart';
import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/constants/theme.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:alumni_hub_ft_uh/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await initializeDateFormatting('id_ID')
      .then((_) => runApp(const AlumniHubFtUhApp()));
}

class AlumniHubFtUhApp extends StatefulWidget {
  const AlumniHubFtUhApp({super.key});

  @override
  State<AlumniHubFtUhApp> createState() => _AlumniHubFtUhAppState();
}

class _AlumniHubFtUhAppState extends State<AlumniHubFtUhApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        title: 'IKATEKhub FTUH',
        debugShowCheckedModeBanner: false,
        color: AppColors.primaryColor,
        theme: appTheme,
        navigatorKey: locator<AppNavigation>().navigatorKey,
        initialRoute: SplashScreen.route,
        onGenerateRoute: routeGenerators,
      ),
    );
  }
}
