import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';

class Header extends LocalizedStatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget builder(BuildContext context, AppLocalizations l) {
    return Row(
      children: [
        // Get style from context theme
        Text(
          l.welcomeText.toUpperCase(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(l.signIn.toUpperCase()),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search))
      ],
    );
  }
}
