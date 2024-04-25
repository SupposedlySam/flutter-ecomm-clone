import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:ui/ui.dart';

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

class HeroCTA extends StatelessWidget {
  const HeroCTA({
    required this.title,
    required this.description,
    required this.ctaText,
    this.subtitle,
    super.key,
  });

  final String title;
  final String? subtitle;
  final String description;
  final String ctaText;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final height = screenSize.height * .5;

    return Container(
      height: height,
      width: screenSize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: Image.network(
            'https://placehold.it/${screenSize.width.floor()}x${height.floor()}',
          ).image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // add in a linear gradient that goes from transparent to black ending transparency at 70%
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0, 0.3),
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (subtitle != null)
                  Text(subtitle!.toUpperCase(),
                      style: context.titleSmall.white),
                Text(title.toUpperCase(), style: context.displayLarge.white),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        description,
                        style: context.titleMedium.white.bold,
                      ),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(ctaText.toUpperCase()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
