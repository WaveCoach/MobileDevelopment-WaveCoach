import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wavecoach/data/models/user_model.dart';

class AuthService {
  String baseUrl = 'https://wavecoach.cintaramayanti.com/api';

  Future<UserModel?> login({
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/login');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({'email': email, 'password': password});

    try {
      var response = await http.post(url, headers: headers, body: body);
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body)['data'];
        UserModel user = UserModel.fromJson(data['user']);
        user.token = 'Bearer ${data['token']}';
        return user;
      } else {
        print('Login gagal: ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error saat login: $e');
      return null;
    }
  }
}
