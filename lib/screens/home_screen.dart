import 'package:app_one/constants/gaps.dart';
import 'package:app_one/constants/sizes.dart';
import 'package:app_one/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final heroProvider = StateProvider<String>((ref) => "");

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void onStartTap(BuildContext context, WidgetRef ref) {
    ref.read(heroProvider.notifier).update((state) => state = "영업사원");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const StartScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v80,
                  const Text(
                    '🧟‍♂️\n회사밖은',
                    style: TextStyle(
                      fontFamily: 'Ramche',
                      fontSize: Sizes.size48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.7,
                    ),
                  ),
                  Gaps.v20,
                  const Text(
                    '위험해',
                    style: TextStyle(
                      fontFamily: 'Ramche',
                      fontSize: Sizes.size48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Gaps.v80,
                  GestureDetector(
                    onTap: () => onStartTap(context, ref),
                    child: const Text(
                      ">>> Start",
                      style: TextStyle(
                        fontFamily: 'Ramche',
                        fontSize: Sizes.size36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEB5C5C),
                        height: 1.7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
