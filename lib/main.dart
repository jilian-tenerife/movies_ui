import 'package:flutter/material.dart';
import 'package:movies_ui/screens/homescreen.dart';
import 'package:movies_ui/screens/movie_detail.dart';
import 'package:movies_ui/screens/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: 'onBoarding',
      routes: {
        'onBoarding': (context) => OnboardingScreen(),
        'homescreen': (context) => homescreen(),
        'movie_detail': (context) => movie_detail(),
      },
    );
  }
}
