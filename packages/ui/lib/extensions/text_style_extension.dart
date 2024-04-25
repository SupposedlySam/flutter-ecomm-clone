import 'package:flutter/material.dart';

extension TextStyleX on TextStyle? {
  TextStyle? get white => this?.copyWith(color: Colors.white);
  TextStyle? get black => this?.copyWith(color: Colors.black);
  TextStyle? get darkGrey => this?.copyWith(color: Colors.grey[800]);
  TextStyle? get bold => this?.copyWith(fontWeight: FontWeight.bold);
  TextStyle? withOpacity(double opacity) => this?.copyWith(
        color: this?.color?.withOpacity(opacity),
      );
}
