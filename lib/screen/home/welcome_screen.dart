import 'package:flutter/material.dart';
import 'package:project_kin_bech/app/app_routes.dart';
import 'package:project_kin_bech/constants/color_theme.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Welcome to KinMel !!!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.redAccent),
              ),
            ),
          ),
          SizedBox(
            height: 55,
            width: double.maxFinite,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: myColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.home);
              },
              child: const Text(
                "Get Started",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
