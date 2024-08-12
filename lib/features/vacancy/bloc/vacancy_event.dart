part of 'vacancy_bloc.dart';

@immutable
abstract class VacancyEvent {}

class VacancyFetched extends VacancyEvent {}

class VacancyRefreshed extends VacancyEvent {
  final bool isClear;

  VacancyRefreshed({this.isClear = false});
}

class VacancyNextPage extends VacancyEvent {}
