import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/models/vacancy_get_many_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class VacancyRemoteDataSource {
  final Api _api;

  VacancyRemoteDataSource(this._api);

  Future<VacancyGetManyModelResponse> getVacancies(
      VacancyGetManyParams vacancyGetManyParams) async {
    final response = await _api.createApiCall(
      endpoint: '/loker', // Update this endpoint to match your API
      method: NetworkCallMethod.get,
      params: vacancyGetManyParams.toJson(),
    );
    return VacancyGetManyModelResponse.fromJson(response.data);
  }
}