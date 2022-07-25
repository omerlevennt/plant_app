import 'package:flutter/material.dart';
import 'package:plant_app/ui/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Plant App",
      home: OnboardingScreen(),
    );
  }
}
