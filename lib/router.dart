import 'package:flutter_application_1/features/add_review/add_review_screen.dart';
import 'package:flutter_application_1/features/address/address_screen.dart';
import 'package:flutter_application_1/features/cart/cart_screen.dart';
import 'package:flutter_application_1/features/gender_screen/gender_screen.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_application_1/features/home_screen/item_screen.dart';
import 'package:flutter_application_1/features/add_review/reviews_screen.dart';
import 'package:flutter_application_1/features/language_screen/language_screen.dart';
import 'package:flutter_application_1/features/login_screen/login_screen.dart';
import 'package:flutter_application_1/features/login_screen/sign_in_screen/NewPassword_screen.dart';
import 'package:flutter_application_1/features/login_screen/sign_in_screen/forgot_password_screen.dart';
import 'package:flutter_application_1/features/login_screen/sign_in_screen/signIn_screen.dart';
import 'package:flutter_application_1/features/login_screen/sign_in_screen/verificationCode_screen.dart';
import 'package:flutter_application_1/features/login_screen/signup_screen/signup_screen.dart';
import 'package:flutter_application_1/features/pay/add_card_screen.dart';
import 'package:flutter_application_1/features/pay/order_confirm.dart';
import 'package:flutter_application_1/features/pay/pay_screen.dart';
import 'package:flutter_application_1/features/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

final AppRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/LanguageScreen',
      builder: (context, state) => const LanguageScreen(),
    ),
    GoRoute(
      path: '/GenderScreen',
      builder: (context, state) => const GenderScreen(),
    ),
    GoRoute(
      path: '/LoginScreen',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/SignUpScreen',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/SignInScreen',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/ForgotPasswordScreen',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/VerificationScreen',
      builder: (context, state) => const VerificationScreen(),
    ),
    GoRoute(
      path: '/NewPasswordScreen',
      builder: (context, state) => const NewPasswordScreen(),
    ),
    GoRoute(
      path: '/HomeScreen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/ItemScreen',
      builder: (context, state) => const ItemScreen(),
    ),
    GoRoute(
      path: '/ReviewsScreen',
      builder: (context, state) => const ReviewsScreen(),
    ),
    GoRoute(
      path: '/AddReviewScreen',
      builder: (context, state) => const AddReviewScreen(),
    ),
    GoRoute(
      path: '/CartScreen',
      builder: (context, state) => const CartScreen(),
    ),
    GoRoute(
      path: '/AddressScreen',
      builder: (context, state) => const AddressScreen(),
    ),
    GoRoute(
      path: '/PaymentScreen',
      builder: (context, state) => const PaymentScreen(),
    ),
    GoRoute(
      path: '/AddCardScreen',
      builder: (context, state) => const AddCardScreen(),
    ),
    GoRoute(
      path: '/OrderConfirmScreen',
      builder: (context, state) => const OrderConfirmScreen(),
    ),
  ],
);
