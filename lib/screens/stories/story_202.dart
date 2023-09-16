import 'package:app_one/constants/sizes.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story202 extends StatelessWidget {
  const Story202({super.key});

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
              Expanded(
                child: ContentText(
                  text: "엘레베이터 버튼을\n누르고 기다린다.\n엘레베이터 기다리는 동안\n뭘 할까?",
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: Sizes.size20),
                child: Column(
                  children: [
                    // SelectTextButton(text: "휴게실로 간다"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
