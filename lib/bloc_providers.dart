import 'package:alumni_hub_ft_uh/features/news/bloc/news_bloc.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/vacancy/bloc/vacancy_bloc.dart';

final blocProviders = [
  BlocProvider<UserBloc>(
    create: (context) => locator<UserBloc>(),
  ),
  BlocProvider<NewsBloc>(
    create: (context) => locator<NewsBloc>(),
  ),
  BlocProvider<VacancyBloc>(
    create: (context) => locator<VacancyBloc>(),
  ),
];
