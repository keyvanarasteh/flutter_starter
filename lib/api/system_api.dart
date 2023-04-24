import 'package:dio/dio.dart';

class SystemApi {
  login(String email, String password) async {
    try {
      final dio = Dio();
      return {
        "name": "Keyvan Arasteh",
        "email": "keyvan.arasteh@live.com",
        "phone": "+905528881111",
        "token": "lzxhcjad;lhajsdl89ws*(&D(DA(*SD)))",
      };
    } catch (e) {
      return null;
    }
  }

  register(String email, String password, String name, String phone) async {
    try {
      final dio = Dio();
      return {
        "name": "Keyvan Arasteh",
        "email": "keyvan.arasteh@live.com",
        "phone": "+905528881111",
        "token": "lzxhcjad;lhajsdl89ws*(&D(DA(*SD)))",
      };
    } catch (e) {
      return null;
    }
  }
}
