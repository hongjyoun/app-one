import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        // automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(Sizes.size20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    // 아이콘 버튼을 눌렀을 때 수행할 작업
                  },
                  customBorder: const CircleBorder(),
                  child: Container(
                    width: Sizes.size48, // 원하는 크기로 조정
                    height: Sizes.size48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Center(
                      child:
                          FaIcon(FontAwesomeIcons.ghost, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: Text("sldkfjsdlf"),
      ),
    );
  }
}
