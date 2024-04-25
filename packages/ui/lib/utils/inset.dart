import 'package:flutter/widgets.dart';

class Inset {
  static const double defaultInset = 12.0;

  static Widget symmetric({
    required Widget child,
    double vertical = 0,
    double horizontal = Inset.defaultInset,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: child,
    );
  }

  static Widget symmetricSliver({
    required Widget sliver,
    double vertical = 0,
    double horizontal = Inset.defaultInset,
  }) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      sliver: sliver,
    );
  }
}
