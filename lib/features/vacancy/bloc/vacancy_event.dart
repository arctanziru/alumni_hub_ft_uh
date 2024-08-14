part of 'vacancy_bloc.dart';

@immutable
abstract class VacancyEvent {}

class VacancyFetched extends VacancyEvent {}

class VacancyRefreshed extends VacancyEvent {
  final bool isClear;
  final String? search;

  VacancyRefreshed({this.isClear = false, this.search});
}

class VacancyNextPage extends VacancyEvent {}
