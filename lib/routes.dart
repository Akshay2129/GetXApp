import 'package:flutter/material.dart';
import 'package:getxproject/pages/MyHomePage.dart';
import 'package:getxproject/pages/product_screen.dart';
import 'package:getxproject/pages/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:getxproject/pages/send_otp_screen.dart';

class Routes {
  static const String initial = '/otp-screen';
  static const String verify = '/verify-screen';
  static const String homepage = '/home-screen';
  static const String products = '/products-screen';

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: initial,
    routes: [
      GoRoute(
        path: initial,
        builder: (context, state) {
          return const SendOtp();
        },
      ),
      GoRoute(
        path: verify,
        builder: (context, state) {
          return VerifyOtpScreen();
        },
      ),
      GoRoute(
        path: homepage,
        builder: (context, state) {
          return const MyHomePage();
        },
        
      ),
      GoRoute(
        path: products,
        builder: (context, state) {
          return const ProductScreen();
        },
        
      ),
    ],
  );
}
