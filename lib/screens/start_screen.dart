import 'package:app_one/constants/sizes.dart';
import 'package:app_one/screens/stories/story_100.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void onClickAbility(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Story100(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        // automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(Sizes.size20),
            child: Row(
              children: [
                RoundIconButton(
                  icon: FontAwesomeIcons.ghost,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContentText(
                      text: "당신의 직책은\n연구직입니다",
                    ),
                    ContentText(
                      text: "이상한 바이러스가 많아\n실험할게 많아진 요즘,\n오늘도 야근이군요 🥲",
                      color: Colors.white,
                    ),
                    ContentText(
                      text: "능력치: 화학물 제조능력",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
                child: GestureDetector(
                  onTap: () => onClickAbility(context),
                  child: const SelectTextButton(text: "야근하러 가보기 >>"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
