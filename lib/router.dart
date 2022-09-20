import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/error.dart';
import 'package:whatsapp_ui/features/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => const Scaffold(
                body: ErrorScreen(error: 'This page does not exist!'),
              ));
  }
}
