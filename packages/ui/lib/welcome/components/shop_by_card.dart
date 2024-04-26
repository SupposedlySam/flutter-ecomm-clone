import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

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
        LimitedBox(
          maxHeight: 300,
          child: Container(
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
        ),
        const SizedBox(height: 4),
        Text(title, style: context.titleSmall.darkGrey),
      ],
    );
  }
}
