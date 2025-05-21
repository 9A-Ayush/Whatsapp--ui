import 'package:flutter/material.dart';
import 'package:whatapp/screens/Home/homescreen.dart';
import 'package:whatapp/screens/SplashScreen/splash%20screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: false,
          fontFamily: "Regular",
        ),
        home: SplashScreen()
    );
  }
}
