import 'package:flutter/material.dart';
import 'package:app_one/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFF000000),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xFFC0C0C0),
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            height: 1.5,
            color: Color(0xFFC0C0C0),
          ),
          labelLarge: TextStyle(
            color: Color(0xFF6C5DD3),
          ),
        ),
      ),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
