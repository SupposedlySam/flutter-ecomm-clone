import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

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
          style: context.displayLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            height: 1.3,
            color: AppTheme.darkenColor(context.theme.primaryColor, .6),
          ),
        ),
      ),
    );
  }
}
