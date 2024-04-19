// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Man`
  String get Man {
    return Intl.message(
      'Man',
      name: 'Man',
      desc: '',
      args: [],
    );
  }

  /// `Woman`
  String get Woman {
    return Intl.message(
      'Woman',
      name: 'Woman',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message(
      'Skip',
      name: 'Skip',
      desc: '',
      args: [],
    );
  }

  /// `Let's Get Started`
  String get Start {
    return Intl.message(
      'Let\'s Get Started',
      name: 'Start',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get account {
    return Intl.message(
      'Already have an account?',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get Signin {
    return Intl.message(
      'Sign in',
      name: 'Signin',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get Create {
    return Intl.message(
      'Create an Account',
      name: 'Create',
      desc: '',
      args: [],
    );
  }

  /// `         Welcome \n`
  String get Welcome {
    return Intl.message(
      '         Welcome \n',
      name: 'Welcome',
      desc: '',
      args: [],
    );
  }

  /// ` Please enter your data to continue`
  String get Pleaseenter {
    return Intl.message(
      ' Please enter your data to continue',
      name: 'Pleaseenter',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get Username {
    return Intl.message(
      'Username',
      name: 'Username',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get Forgot {
    return Intl.message(
      'Forgot password?',
      name: 'Forgot',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me`
  String get Remember {
    return Intl.message(
      'Remember Me',
      name: 'Remember',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message(
      'Login',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// `Term and Condition`
  String get Term {
    return Intl.message(
      'Term and Condition',
      name: 'Term',
      desc: '',
      args: [],
    );
  }

  /// `By connecting your account confirm that you agree\n                    with our`
  String get Term1 {
    return Intl.message(
      'By connecting your account confirm that you agree\n                    with our',
      name: 'Term1',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get Email {
    return Intl.message(
      'Email Address',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message(
      'Sign Up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get Forgot1 {
    return Intl.message(
      'Forgot Password',
      name: 'Forgot1',
      desc: '',
      args: [],
    );
  }

  /// `     Please write your email to receive a\n confirmation code to set a new password.`
  String get writemail {
    return Intl.message(
      '     Please write your email to receive a\n confirmation code to set a new password.',
      name: 'writemail',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Mail`
  String get Confmail {
    return Intl.message(
      'Confirm Mail',
      name: 'Confmail',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get Verfcode {
    return Intl.message(
      'Verification Code',
      name: 'Verfcode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Code`
  String get Confcode {
    return Intl.message(
      'Confirm Code',
      name: 'Confcode',
      desc: '',
      args: [],
    );
  }

  /// `resend confirmation code.`
  String get resendcode {
    return Intl.message(
      'resend confirmation code.',
      name: 'resendcode',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get NewPass {
    return Intl.message(
      'New Password',
      name: 'NewPass',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get ConfPass {
    return Intl.message(
      'Confirm Password',
      name: 'ConfPass',
      desc: '',
      args: [],
    );
  }

  /// `Please write your new password.`
  String get writpass {
    return Intl.message(
      'Please write your new password.',
      name: 'writpass',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get ResetPass {
    return Intl.message(
      'Reset Password',
      name: 'ResetPass',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get Hello {
    return Intl.message(
      'Hello',
      name: 'Hello',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Laza.`
  String get WelcomLaza {
    return Intl.message(
      'Welcome to Laza.',
      name: 'WelcomLaza',
      desc: '',
      args: [],
    );
  }

  /// `Choose Brand`
  String get ChooseBrand {
    return Intl.message(
      'Choose Brand',
      name: 'ChooseBrand',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get ViewAll {
    return Intl.message(
      'View All',
      name: 'ViewAll',
      desc: '',
      args: [],
    );
  }

  /// `New Arraival`
  String get NewArraival {
    return Intl.message(
      'New Arraival',
      name: 'NewArraival',
      desc: '',
      args: [],
    );
  }

  /// `Nike Sportswear Club\nFleece`
  String get Nike {
    return Intl.message(
      'Nike Sportswear Club\nFleece',
      name: 'Nike',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  /// `Verified Profile`
  String get VerifiProf {
    return Intl.message(
      'Verified Profile',
      name: 'VerifiProf',
      desc: '',
      args: [],
    );
  }

  /// `3 Orders`
  String get Orders {
    return Intl.message(
      '3 Orders',
      name: 'Orders',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get DarkMode {
    return Intl.message(
      'Dark Mode',
      name: 'DarkMode',
      desc: '',
      args: [],
    );
  }

  /// `Account Information`
  String get AccountInfo {
    return Intl.message(
      'Account Information',
      name: 'AccountInfo',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get Order {
    return Intl.message(
      'Order',
      name: 'Order',
      desc: '',
      args: [],
    );
  }

  /// `My Cards`
  String get MyCards {
    return Intl.message(
      'My Cards',
      name: 'MyCards',
      desc: '',
      args: [],
    );
  }

  /// `Wishlist`
  String get Wishlist {
    return Intl.message(
      'Wishlist',
      name: 'Wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Men's Printed Pullover Hoodie`
  String get MenHodi {
    return Intl.message(
      'Men\'s Printed Pullover Hoodie',
      name: 'MenHodi',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price {
    return Intl.message(
      'Price',
      name: 'Price',
      desc: '',
      args: [],
    );
  }

  /// `Nike Sports Hoodie`
  String get Nikesports {
    return Intl.message(
      'Nike Sports Hoodie',
      name: 'Nikesports',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get Size {
    return Intl.message(
      'Size',
      name: 'Size',
      desc: '',
      args: [],
    );
  }

  /// `Size Guide`
  String get SizeGuide {
    return Intl.message(
      'Size Guide',
      name: 'SizeGuide',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get Description {
    return Intl.message(
      'Description',
      name: 'Description',
      desc: '',
      args: [],
    );
  }

  /// `Read More..`
  String get ReadMore {
    return Intl.message(
      'Read More..',
      name: 'ReadMore',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get Reviews {
    return Intl.message(
      'Reviews',
      name: 'Reviews',
      desc: '',
      args: [],
    );
  }

  /// `rating`
  String get rating {
    return Intl.message(
      'rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `Total Price`
  String get TotalPrice {
    return Intl.message(
      'Total Price',
      name: 'TotalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get AddtoCart {
    return Intl.message(
      'Add to Cart',
      name: 'AddtoCart',
      desc: '',
      args: [],
    );
  }

  /// `245 Reviews`
  String get Review {
    return Intl.message(
      '245 Reviews',
      name: 'Review',
      desc: '',
      args: [],
    );
  }

  /// `Add Review`
  String get AddReview {
    return Intl.message(
      'Add Review',
      name: 'AddReview',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Type your name`
  String get Typename {
    return Intl.message(
      'Type your name',
      name: 'Typename',
      desc: '',
      args: [],
    );
  }

  /// `How was your experience ?`
  String get Howexperience {
    return Intl.message(
      'How was your experience ?',
      name: 'Howexperience',
      desc: '',
      args: [],
    );
  }

  /// `Describe your experience?`
  String get Describeexperience {
    return Intl.message(
      'Describe your experience?',
      name: 'Describeexperience',
      desc: '',
      args: [],
    );
  }

  /// `Star`
  String get Star {
    return Intl.message(
      'Star',
      name: 'Star',
      desc: '',
      args: [],
    );
  }

  /// `Submit Review`
  String get SubmitReview {
    return Intl.message(
      'Submit Review',
      name: 'SubmitReview',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get Cart {
    return Intl.message(
      'Cart',
      name: 'Cart',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get DeliveryAddress {
    return Intl.message(
      'Delivery Address',
      name: 'DeliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get PaymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'PaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Order Info`
  String get OrderInfo {
    return Intl.message(
      'Order Info',
      name: 'OrderInfo',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get Subtotal {
    return Intl.message(
      'Subtotal',
      name: 'Subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Shipping cost`
  String get Shippingcost {
    return Intl.message(
      'Shipping cost',
      name: 'Shippingcost',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get Total {
    return Intl.message(
      'Total',
      name: 'Total',
      desc: '',
      args: [],
    );
  }

  /// `Check out`
  String get Checkout {
    return Intl.message(
      'Check out',
      name: 'Checkout',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get Address {
    return Intl.message(
      'Address',
      name: 'Address',
      desc: '',
      args: [],
    );
  }

  /// `Mrh Raju`
  String get MrhRaju {
    return Intl.message(
      'Mrh Raju',
      name: 'MrhRaju',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get Country {
    return Intl.message(
      'Country',
      name: 'Country',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get City {
    return Intl.message(
      'City',
      name: 'City',
      desc: '',
      args: [],
    );
  }

  /// `Bangladesh`
  String get Bangladesh {
    return Intl.message(
      'Bangladesh',
      name: 'Bangladesh',
      desc: '',
      args: [],
    );
  }

  /// `Sylhet`
  String get Sylhet {
    return Intl.message(
      'Sylhet',
      name: 'Sylhet',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get PhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Chhatak, Sunamgonj 12/8AB`
  String get ChhatakSunamgonj {
    return Intl.message(
      'Chhatak, Sunamgonj 12/8AB',
      name: 'ChhatakSunamgonj',
      desc: '',
      args: [],
    );
  }

  /// `Save as primary address`
  String get SavePraddress {
    return Intl.message(
      'Save as primary address',
      name: 'SavePraddress',
      desc: '',
      args: [],
    );
  }

  /// `Save Address`
  String get SaveAddress {
    return Intl.message(
      'Save Address',
      name: 'SaveAddress',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get Payment {
    return Intl.message(
      'Payment',
      name: 'Payment',
      desc: '',
      args: [],
    );
  }

  /// `Add new card`
  String get Addnewcard {
    return Intl.message(
      'Add new card',
      name: 'Addnewcard',
      desc: '',
      args: [],
    );
  }

  /// `Card Owner`
  String get CardOwner {
    return Intl.message(
      'Card Owner',
      name: 'CardOwner',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get CardNumber {
    return Intl.message(
      'Card Number',
      name: 'CardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Save card info`
  String get Savecardinfo {
    return Intl.message(
      'Save card info',
      name: 'Savecardinfo',
      desc: '',
      args: [],
    );
  }

  /// `Save Card`
  String get SaveCard {
    return Intl.message(
      'Save Card',
      name: 'SaveCard',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get AddCard {
    return Intl.message(
      'Add Card',
      name: 'AddCard',
      desc: '',
      args: [],
    );
  }

  /// `Order Confirmed!`
  String get OrderConfirmed {
    return Intl.message(
      'Order Confirmed!',
      name: 'OrderConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been confirmed, we will send\n            you confirmation email shortly.`
  String get Yourorderconfirmed {
    return Intl.message(
      'Your order has been confirmed, we will send\n            you confirmation email shortly.',
      name: 'Yourorderconfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Go To Orders`
  String get GoToOrders {
    return Intl.message(
      'Go To Orders',
      name: 'GoToOrders',
      desc: '',
      args: [],
    );
  }

  /// `Continue Shopping`
  String get ContinueShopping {
    return Intl.message(
      'Continue Shopping',
      name: 'ContinueShopping',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get Start2 {
    return Intl.message(
      'Start',
      name: 'Start2',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get Search {
    return Intl.message(
      'Search...',
      name: 'Search',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
