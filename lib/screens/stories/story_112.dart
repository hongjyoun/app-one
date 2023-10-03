import 'package:app_one/constants/sizes.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/screens/stories/story_210.dart';
import 'package:app_one/screens/stories/story_992.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story112 extends StatelessWidget {
  const Story112({super.key});

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
                child: Column(
                  children: [
                    ContentText(
                      text:
                          "'!#!@#!!.....'\n외국인이\n넋이 나간채 중얼거리고 있었다\n영어인것 같은데 알아들을 수가 없다...",
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
                child: Column(
                  children: [
                    SelectTextButton(
                      text: "내 연구실에서 화학약품을 좀 챙겨가자",
                      onTap: () => navigatorOnPush(context, const Story210()),
                    ),
                    SelectTextButton(
                      text: "그냥 지나치고 올라간다",
                      onTap: () => navigatorOnPush(context, const Story992()),
                    ),
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
