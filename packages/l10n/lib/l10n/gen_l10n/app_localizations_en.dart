// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: use_super_parameters
// GENERATED FILE: DO NOT MODIFY BY HAND
//
// Update the template in the `app_en.arb` file
// To re-generate open the terminal and run `flutter gen-l10n`
// Code generation options are located in the `l10n.yaml` file
// All available options are listed at the following address https://github.com/flutter/flutter/blob/master/packages/flutter_tools/lib/src/commands/generate_localizations.dart
//
// For a list of all available arb options see https://docs.google.com/document/d/10e0saTfAv32OZLRmONy866vnaw0I2jwL8zukykpgWBc/edit#

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcomeText => 'Welcome';

  @override
  String get signIn => 'Sign In';

  @override
  String get shopNow => 'Shop Now';

  @override
  String get hero1XTitle => 'New Collection';

  @override
  String get hero1XSubtitle => 'Just Launched';

  @override
  String get hero1XDescription => 'Some description that will make you really want to buy this';

  @override
  String get hero2XTitle => 'New Collection';

  @override
  String get hero2XDescription => 'Some description that will make you really want to buy this';

  @override
  String get hero3XTitle => 'New Collection';

  @override
  String get hero3XDescription => 'Some description that will make you really want to buy this';

  @override
  String get gridViewXHeader => 'GridView Header';

  @override
  String get listViewXHeader => 'ListView Header';

  @override
  String gridViewXCategoryN(Object number) {
    return 'Category $number';
  }

  @override
  String get quote => 'This is something that cannot be missed and should be called out in all bold';

  @override
  String productDescriptorN(Object number) {
    return 'Product Descriptor $number';
  }

  @override
  String productNameN(Object number) {
    return 'Product Name $number';
  }

  @override
  String productDeal(Object quantity, Object price) {
    return '$quantity For $price';
  }
}
