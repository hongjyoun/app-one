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
      title: 'Tiktok Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
      ),
      home: Container(),
    );
  }
}
