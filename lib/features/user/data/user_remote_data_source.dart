import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/constants/keys.dart';
import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/models/user_get_one.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class UserRemoteDataSource {
  final Api _api;

  UserRemoteDataSource(this._api);

  Future<UserGetOneResponse> getProfile() async {
    final response = await _api.createApiCall(
      endpoint: '/user',
      method: NetworkCallMethod.get,
    );
    if (response.statusCode == 401 || response.statusCode == 403) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove(kUserSession);
      locator<AppNavigation>().navigateReplace('/sign_in');
    }
    return UserGetOneResponse.fromJson(response.data);
  }
}
