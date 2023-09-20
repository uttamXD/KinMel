import 'package:flutter/material.dart';
import 'package:project_kin_bech/app/app_routes.dart';
import 'package:project_kin_bech/constants/color_theme.dart';
import 'package:project_kin_bech/constants/text_theme.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Expanded(
            child: Center(
              child: Text(
                "Welcome to KinMel !!!",
                style: titleText,
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
              child:  Text(
                "Get Started",
                style: titleText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
