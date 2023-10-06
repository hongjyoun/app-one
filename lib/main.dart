import 'package:firebase_core/firebase_core.dart';
import 'package:app_one/firebase_options.dart';
import 'package:app_one/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  runApp(const ProviderScope(child: GameOneApp()));
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class GameOneApp extends StatelessWidget {
  const GameOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App One',
      theme: ThemeData(
          canvasColor: const Color(0xFF443444),
          focusColor: const Color(0xFF220523),
          primaryColor: const Color(0xFFEB5C5C),
          primaryColorDark: const Color(0xFF550E27),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 100,
          )),
      home: const HomeScreen(),
    );
  }
}
