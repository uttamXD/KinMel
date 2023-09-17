import 'package:flutter/material.dart';
import 'package:project_kin_bech/screen/home/view/home_screen.dart';
import 'package:project_kin_bech/screen/home/welcome_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String welcomeScreen = '/welcon-screen';
  static const String description = '/description';
  static const String cart = '/cartView';
}

class Approuter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case AppRoutes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomScreen());

         default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("no routes"),
                  ),
                ));
    }
  }
}
