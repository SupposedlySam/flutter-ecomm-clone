import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:ui/utils/inset.dart';

class WelcomeView extends LocalizedStatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget builder(BuildContext context, AppLocalizations l) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList.list(
              children: [
                Inset.symmetric(child: const Header()),
                HeroCTA(
                  subtitle: l.hero1XSubtitle,
                  title: l.hero1XTitle,
                  description: l.hero1XDescription,
                  ctaText: l.shopNow,
                ),
              ],
            ),
            GridViewHeader(title: l.gridViewXHeader),
            Inset.symmetricSliver(
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 3 / 5,
                children: [
                  ShopByCard(title: l.gridViewXCategoryN(1)),
                  ShopByCard(title: l.gridViewXCategoryN(2)),
                  ShopByCard(title: l.gridViewXCategoryN(3)),
                  ShopByCard(title: l.gridViewXCategoryN(4)),
                ],
              ),
            ),
            SliverList.list(
              children: [
                const SizedBox(height: 24),
                HeroCTA(
                  title: l.hero2XTitle,
                  description: l.hero2XDescription,
                  ctaText: l.shopNow,
                ),
                QuoteBlock(quote: l.quote),
                HeroCTA(
                  title: l.hero3XTitle,
                  description: l.hero3XDescription,
                  ctaText: l.shopNow,
                ),
              ],
            ),
            GridViewHeader(title: l.gridViewXHeader),
            Inset.symmetricSliver(
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 3 / 5,
                children: [
                  ShopByCard(title: l.gridViewXCategoryN(1)),
                  ShopByCard(title: l.gridViewXCategoryN(2)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridViewHeader extends StatelessWidget {
  const GridViewHeader({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: [
        const SizedBox(height: 24),
        Inset.symmetric(child: Text(title)),
        const SizedBox(height: 12),
      ],
    );
  }
}

class QuoteBlock extends StatelessWidget {
  const QuoteBlock({
    required this.quote,
    super.key,
  });

  final String quote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Center(
        child: Text(
          quote.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            height: 1.3,
          ),
        ),
      ),
    );
  }
}

class ShopByCard extends StatelessWidget {
  const ShopByCard({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: Image.network(
                'https://placehold.it/200x300',
              ).image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(title),
      ],
    );
  }
}

class Header extends LocalizedStatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget builder(BuildContext context, AppLocalizations l) {
    return Row(
      children: [
        Text(l.welcomeText.toUpperCase()),
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
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (subtitle != null) Text(subtitle!.toUpperCase()),
            Text(title.toUpperCase()),
            const SizedBox(height: 12),
            Row(
              children: [
                Flexible(child: Text(description)),
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
    );
  }
}
