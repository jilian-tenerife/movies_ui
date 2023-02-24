import 'package:flutter/material.dart';
import 'package:movies_ui/screens/homescreen.dart';
import 'package:movies_ui/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: 'onBoarding',
      routes: {
        'onBoarding': (context) => OnboardingScreen(),
        'homescreen': (context) => homescreen(),
      },
    );
  }
}
