import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:ui/utils/inset.dart';
import 'package:ui/welcome/components/grid_view_header.dart';
import 'package:ui/welcome/components/header.dart';
import 'package:ui/welcome/components/quote_block.dart';
import 'package:ui/welcome/components/shop_by_card.dart';

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