import 'package:mobile_app/app/data/model/auth_model.dart';
import 'package:mobile_app/app/data/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient authApiClient = AuthApiClient();

  Future<Auth> login(String username, String password) async {
    Map json = await authApiClient.login(username, password);
    return Auth.fromJson(json);
  }
}
