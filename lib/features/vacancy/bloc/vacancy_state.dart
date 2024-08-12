part of 'vacancy_bloc.dart';

enum VacancyStatus { initial, loading, loaded, error }

class VacancyState {
  final VacancyStatus status;
  final List<VacancyModel> vacancies;
  final CustomException? error;
  String? search;

  VacancyState({
    this.status = VacancyStatus.initial,
    this.vacancies = const <VacancyModel>[],
    this.error,
  });

  VacancyState copyWith({
    VacancyStatus? status,
    List<VacancyModel>? vacancies,
    CustomException? error,
  }) {
    return VacancyState(
      status: status ?? this.status,
      vacancies: vacancies ?? this.vacancies,
      error: error ?? this.error,
    );
  }

  @override
  String toString() {
    return 'VacancyState{status: $status, vacancies: ${vacancies.length}, error: $error}';
  }
}