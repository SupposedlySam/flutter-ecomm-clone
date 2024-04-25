import 'package:l10n/l10n.dart';
import 'package:flutter/widgets.dart';

extension LocalizationContextX on BuildContext {
  AppLocalizations get intl => AppLocalizations.of(this);
  Locale get locale => Localizations.localeOf(this);
}
