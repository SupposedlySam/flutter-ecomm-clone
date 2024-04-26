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
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @welcomeText.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcomeText;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @shopNow.
  ///
  /// In en, this message translates to:
  /// **'Shop Now'**
  String get shopNow;

  /// No description provided for @hero1XTitle.
  ///
  /// In en, this message translates to:
  /// **'New Collection'**
  String get hero1XTitle;

  /// No description provided for @hero1XSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Just Launched'**
  String get hero1XSubtitle;

  /// No description provided for @hero1XDescription.
  ///
  /// In en, this message translates to:
  /// **'Some description that will make you really want to buy this'**
  String get hero1XDescription;

  /// No description provided for @hero2XTitle.
  ///
  /// In en, this message translates to:
  /// **'New Collection'**
  String get hero2XTitle;

  /// No description provided for @hero2XDescription.
  ///
  /// In en, this message translates to:
  /// **'Some description that will make you really want to buy this'**
  String get hero2XDescription;

  /// No description provided for @hero3XTitle.
  ///
  /// In en, this message translates to:
  /// **'New Collection'**
  String get hero3XTitle;

  /// No description provided for @hero3XDescription.
  ///
  /// In en, this message translates to:
  /// **'Some description that will make you really want to buy this'**
  String get hero3XDescription;

  /// No description provided for @gridViewXHeader.
  ///
  /// In en, this message translates to:
  /// **'GridView Header'**
  String get gridViewXHeader;

  /// No description provided for @listViewXHeader.
  ///
  /// In en, this message translates to:
  /// **'ListView Header'**
  String get listViewXHeader;

  /// No description provided for @gridViewXCategoryN.
  ///
  /// In en, this message translates to:
  /// **'Category {number}'**
  String gridViewXCategoryN(Object number);

  /// No description provided for @quote.
  ///
  /// In en, this message translates to:
  /// **'This is something that cannot be missed and should be called out in all bold'**
  String get quote;

  /// No description provided for @productDescriptorN.
  ///
  /// In en, this message translates to:
  /// **'Product Descriptor {number}'**
  String productDescriptorN(Object number);

  /// No description provided for @productNameN.
  ///
  /// In en, this message translates to:
  /// **'Product Name {number}'**
  String productNameN(Object number);

  /// No description provided for @productDeal.
  ///
  /// In en, this message translates to:
  /// **'{quantity} For {price}'**
  String productDeal(Object quantity, Object price);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
