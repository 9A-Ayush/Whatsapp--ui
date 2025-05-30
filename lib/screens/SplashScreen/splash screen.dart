import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatapp/screens/OnBoarding/onboardingscreen.dart';
import 'package:whatapp/widgits/uihelper.dart';

 // Corrected the typo from "widgits" to "widgets"


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash.png",
            height :200,
              width: 200,
            ),
            SizedBox(height:05),
            Uihelper.CustomText(
              text: "WhatsApp",
              height: 18,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
