import 'package:l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class LocalizedStatelessWidget extends StatelessWidget {
  const LocalizedStatelessWidget({super.key});

  /// Same a [build] but also passes in [AppLocalizations]
  Widget builder(BuildContext context, AppLocalizations l);

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    return builder(context, context.intl);
  }
}
