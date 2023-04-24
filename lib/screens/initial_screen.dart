import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/settings/settings_cubit.dart';
import '../localizations/localizations.dart';
import '../storage/storage.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool loading = true;
  late SettingsCubit settings;

  loadApp() async {
    try {
      // read Storage
      // read Settings
      final storage = AppStorage();
      var data = await storage.readAll();

      // --data--
      // language
      // darkMode
      // loggedIn
      // userInfo

      if (data["darkMode"] == null) {
        // there is no darkMode in Storage
        // set Default darkMode
        if (ThemeMode.system == ThemeMode.dark) {
          // device is in dark mode
          data["darkMode"] = true;
        } else {
          // device is in light mode
          data["darkMode"] = false;
        }
        // await storage.writeAppSettings(language: "", darkMode: data["darkMode"]);
      }

      if (data["language"] == null) {
        // set Default Language
        if (kIsWeb) {
          data["language"] = "tr";
          await storage.writeAppSettings(
              language: data["language"], darkMode: data["darkMode"]);
        } else {
          final String defaultLocale = Platform.localeName;
          // en_US
          // tr_TR
          var liste = defaultLocale.split('_');
          // ["en","US"]
          // ["tr", "TR"]
          var isSupported =
              AppLocalizations.delegate.isSupported(Locale(liste[0], ""));
          if (isSupported) {
            data["language"] = liste[0];
            await storage.writeAppSettings(
                language: data["language"], darkMode: data["darkMode"]);
          } else {
            data["language"] = "en";
            await storage.writeAppSettings(
                language: data["language"], darkMode: data["darkMode"]);
          }
        }
      }

      if (data["loggedIn"] == null) {
        data["loggedIn"] = false;
        data["userInfo"] = [];
        await storage.writeUserData(isLoggedIn: false, userInfo: []);
      }

      // apply settings to app state
      settings.changeDarkMode(data["darkMode"]);
      settings.changeLanguage(data["language"]);
      if (data["loggedIn"]) {
        settings.userLogin(data["userInfo"]);
      } else {
        settings.userLogout();
      }

      setState(() {
        loading = false;
      });

      if (data["loggedIn"]) {
        GoRouter.of(context).replace("/home");
      } else {
        GoRouter.of(context).replace("/welcome");
      }
    } catch (e) {}
  }

  @override
  void initState() {
    settings = context.read<SettingsCubit>();
    super.initState();
    loadApp();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: loading
                ? Center(child: const CircularProgressIndicator())
                : const Text('Loaded')));
  }
}
