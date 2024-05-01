import 'package:flutter/material.dart';
import 'package:ui/extensions/iterable_extension.dart';

class PaddedHorizontalList extends StatelessWidget {
  const PaddedHorizontalList({
    required this.children,
    required this.spacing,
    super.key,
  });

  final List<Widget> children;
  final Widget spacing;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        spacing,
        ...children.joinWith(spacing),
        spacing,
      ],
    );
  }
}
