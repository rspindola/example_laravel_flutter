import 'dart:convert';
import 'package:http/http.dart' as http;

const baseUrl = 'http://localhost:8000/api';

class AuthApiClient {
  final http.Client httpClient = http.Client();

  // ignore: missing_return
  Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      var response = await httpClient.post(
        baseUrl + '/login',
        body: {
          "username": username,
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
