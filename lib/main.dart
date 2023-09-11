import 'package:app_one/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GameOneApp());
}

class GameOneApp extends StatelessWidget {
  const GameOneApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App One',
      theme: ThemeData(
        canvasColor: const Color(0xFF443444),
        focusColor: const Color(0xFF220523),
        primaryColor: const Color(0xFF8B0535),
        primaryColorDark: const Color(0xFF550E27),
      ),
      home: const HomeScreen(),
    );
  }
}
