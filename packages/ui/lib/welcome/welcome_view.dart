import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:ui/utils/inset.dart';
import 'package:ui/welcome/components/header.dart';
import 'package:ui/welcome/components/padded_horizontal_list.dart';
import 'package:ui/welcome/components/product_card.dart';
import 'package:ui/welcome/components/quote_block.dart';
import 'package:ui/welcome/components/section_header.dart';
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
            SectionHeader(title: l.gridViewXHeader),
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
            SectionHeader(title: l.listViewXHeader),
            SliverToBoxAdapter(
              child: LimitedBox(
                maxHeight: 400,
                child: PaddedHorizontalList(
                  spacing: const SizedBox(width: 12),
                  children: [
                    ProductCard(
                      descriptor: l.productDescriptorN(1),
                      name: l.productNameN(1),
                      price: 48.99,
                    ),
                    ProductCard(
                      descriptor: l.productDescriptorN(2),
                      name: l.productNameN(2),
                      price: 70.99,
                      deal: const Deal(quantity: 3, price: 36.99),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
