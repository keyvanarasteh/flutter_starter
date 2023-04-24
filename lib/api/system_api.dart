import 'package:dio/dio.dart';

class SystemApi {

  Object error = "";

  login({required String email, required String password}) async {
    try {
      final dio = Dio();
      String endpoint = "";
      var params = {
        "email": email,
        "passsword": password,
      };

      var formData = FormData.fromMap(params);

      final response = await dio.post(endpoint, data: formData);

      if(response.statusCode == 200) {
        var token = response.data["data"]["token"];
        return token;
      }
      else {
        return null;
      }
    } catch (e) {
      error = e;
      return null;
    }
  }

  Future<String?> register({required String email,required  String password,required  String name,required  String phone}) async {
    try {
      final dio = Dio();
      String endpoint = "";
      
      var params = {
        "name": name,
        "email": email,
        "passsword": password,
        "confirm_password": password,
      };

      var formData = FormData.fromMap(params);

      final response = await dio.post(endpoint, data: formData);

      if(response.statusCode == 200) {
        var token = response.data["data"]["token"];
        return token;
      }
      else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
