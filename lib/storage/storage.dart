import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  Future<Map<String, dynamic>> readAll() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    var loggedIn = storage.getBool('isLoggedIn');
    var userInfo = storage.getStringList('userInfo');
    var language = storage.getString('language');
    var darkMode = storage.getBool('darkMode');

    return {
      "loggedIn": loggedIn,
      "userInfo": userInfo,
      "language": language,
      "darkMode": darkMode,
    };
  }

  readUserData() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    var loggedIn = storage.getBool('isLoggedIn');
    var userInfo = storage.getStringList('userInfo');

    return {
      "loggedIn": loggedIn,
      "userInfo": userInfo,
    };
  }

  readAppSettings() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    var language = storage.getString('language');
    var darkMode = storage.getBool('darkMode');

    return {
      "language": language,
      "darkMode": darkMode,
    };
  }

  writeUserData(
      {required bool isLoggedIn, required List<String> userInfo}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    storage.setBool('isLoggedIn', isLoggedIn);
    storage.setStringList('userInfo', userInfo);
  }

  writeAppSettings({required String language, required bool darkMode}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    storage.setString('language', language);
    storage.setBool('darkMode', darkMode);
  }

  readBalances() async {}

  writeBalances() async {}
}
