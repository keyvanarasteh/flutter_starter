import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  static List<String> supportedLanguages = ['en', 'tr'];

  late Locale locale;
  late Map<String, String> _valueText;
  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of(context, AppLocalizations);
  }

  static bool isSupported(String locale) {
    return supportedLanguages.any((element) => locale.contains(element));
  }

  static String getSupportedLocaleCode(String locale) {
    return supportedLanguages
        .where((element) => locale.contains(element))
        .first;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  Future loadTranslateFile() async {
    String _langFile =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');

    Map<String, dynamic> _json = jsonDecode(_langFile);
    _valueText = _json.map((key, value) => MapEntry(key, value.toString()));
  }

  String getTranslate(String key) {
    return _valueText[key]!;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLanguages.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.loadTranslateFile();
    return appLocalizations;
  }

  @override
  bool shouldReload(covariant AppLocalizationsDelegate old) => false;
}

Locale? localeResolutionCallback(
    Locale? deviceLocale, Iterable<Locale> supportedLocales) {
  // return deviceLocale != null &&
  //         ['en', 'ar', 'tr', 'fa', 'fr', 'es']
  //             .contains(deviceLocale.languageCode)
  //     ? deviceLocale
  //     : supportedLocales.first;
  for (var supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == deviceLocale?.languageCode &&
        supportedLocale.countryCode == deviceLocale?.countryCode) {
      return supportedLocale;
    }
  }
  return supportedLocales.first;
}
