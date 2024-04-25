import 'package:l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

typedef LocalizationsCallback = String Function(AppLocalizations);
typedef LocalizationsCallbackNullable = String? Function(AppLocalizations);

class Localization {
  static const List<LocalizationsDelegate<Object>> delegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static const supportedLocales = [
    Locale('en', ''), // English, no country code
    Locale('ja', ''), // Japanese, no country code
  ];
}
