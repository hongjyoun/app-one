import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Row(
            children: [
              Text(
                '회사밖은\n위험해',
                style: TextStyle(
                  fontFamily: 'Ramche',
                  fontSize: Sizes.size28,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
