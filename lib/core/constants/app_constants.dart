import 'dart:ui';

class AppConstants {
  AppConstants._();

  //Localization
  static const String translationsPath = 'assets/translations';
  static const Locale fallbackLocale = Locale('en', 'US');
  static const List<Locale> supportedLocales = [
    Locale('uk', 'UA'),
    Locale('en', 'US'),
  ];
}
