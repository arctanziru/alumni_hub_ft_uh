import 'package:alumni_hub_ft_uh/features/alumni/domain/alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part "alumni_event.dart";
part "alumni_state.dart";

@injectable
class AlumniBloc extends Bloc<AlumniEvent, AlumniState> {
  final AlumniRepository _alumniRepository;
  String? jurusan;
  int? angkatan;
  String? search;

  AlumniBloc(this._alumniRepository) : super(AlumniAngkatanInitial()) {
    on<AlumniEventGetAngkatan>((event, emit) async {
      try {
        emit(AlumniAngkatanLoading());
        final query = _alumniRepository.getAngkatanAlumni(AlumniAngkatanParams(
          search: search,
        ));
        await for (final queryState in query.stream) {
          emit(AlumniAngkatanSuccess(queryState.data!));
        }
      } catch (e) {
        emit(AlumniAngkatanError(e.toString()));
      }
    });

    on<AlumniEventGetJurusan>((event, emit) async {
      try {
        emit(AlumniJurusanLoading());
        final query = _alumniRepository.getJurusanAlumni(
            AlumniJurusanParams(angkatan: angkatan!, search: search));
        await for (final queryState in query.stream) {
          emit(AlumniJurusanSuccess(queryState.data!));
        }
      } catch (e) {
        emit(AlumniJurusanError(e.toString()));
      }
    });

    on<AlumniEventGetMany>((event, emit) async {
      try {
        emit(AlumniGetManyLoading());
        final query = _alumniRepository.getAlumniClaimData(
            AlumniGetManyParams(jurusan: jurusan!, angkatan: angkatan!));
        await for (final queryState in query.stream) {
          emit(AlumniGetManySuccess(queryState.data!));
        }
      } catch (e) {
        emit(AlumniGetManyError(e.toString()));
      }
    });
  }
}
