import 'package:flutter/material.dart';
import 'package:l10n/l10n.dart';
import 'package:ui/ui.dart';

class ProductCard extends LocalizedStatelessWidget {
  const ProductCard({
    required this.name,
    required this.descriptor,
    required this.price,
    this.deal,
    super.key,
  });

  final String descriptor;
  final String name;
  final double price;
  final Deal? deal;

  @override
  Widget builder(BuildContext context, AppLocalizations l) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: 200,
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
        if (deal != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(l.productDeal(deal!.quantity, deal!.price.floor())),
          ),
        Text(descriptor, style: context.titleSmall.darkGrey),
        Text(name, style: context.titleMedium.darkGrey),
        Text('\$${price.floor()}', style: context.titleSmall.black),
      ],
    );
  }
}

class Deal {
  const Deal({required this.quantity, required this.price});

  final int quantity;
  final double price;
}
