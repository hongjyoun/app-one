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
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 350,
              ),
              Text(
                "벌써 밤 11시, \n막차가 끊기기 전에 \n집으로 갈까?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Sizes.size24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
