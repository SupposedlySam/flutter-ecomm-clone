import 'package:flutter/material.dart';
import 'package:ui/extensions/context_extension.dart';
import 'package:ui/utils/inset.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: [
        const SizedBox(height: 24),
        Inset.symmetric(
          child: Text(
            title.toUpperCase(),
            style: context.displaySmall,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
