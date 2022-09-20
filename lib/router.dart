import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/error.dart';
import 'package:whatsapp_ui/features/auth/screens/login_screen.dart';
import 'package:whatsapp_ui/features/auth/screens/otp_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen());
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
          builder: (BuildContext context) => OTPScreen(
                verificationId: verificationId,
              ));
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => const Scaffold(
                body: ErrorScreen(error: 'This page does not exist!'),
              ));
  }
}
