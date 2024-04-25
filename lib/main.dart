import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:ui/ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      localizationsDelegates: Localization.delegates,
      supportedLocales: Localization.supportedLocales,
      home: const WelcomeView(),
    );
  }
}
