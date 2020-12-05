import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_app/app/utils/contants.dart';

class AuthApiClient {
  final http.Client httpClient = http.Client();

  // ignore: missing_return
  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      var response = await httpClient.post(
        baseUrlApi + '/login',
        body: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print("Error: ${response.body}");
      }
    } catch (e) {
      print(e);
    }

    return null;
  }
}
