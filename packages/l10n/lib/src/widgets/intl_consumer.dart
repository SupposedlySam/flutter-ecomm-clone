import 'package:l10n/l10n.dart';
import 'package:flutter/material.dart';

class IntlConsumer extends StatelessWidget {
  const IntlConsumer({required this.builder, super.key});

  final Widget Function(BuildContext context, AppLocalizations l) builder;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final l = Localizations.of<AppLocalizations>(context, AppLocalizations);

      return l == null ? Container() : builder(context, l);
    });
  }
}
