import 'package:app_one/constants/gaps.dart';
import 'package:app_one/constants/sizes.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/screens/stories/story_210.dart';
import 'package:app_one/screens/stories/story_992.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story111 extends StatelessWidget {
  const Story111({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                child: ListView(
                  children: [
                    Column(
                      children: [
                        ContentText(
                          text:
                              "“이 위로는 올라갈 수 없어.\n올라가면 바로 죽음뿐이야”\n오전에 왔었던\n해외바이어 중 한명이\n넋이 나간채 중얼거리고 있었다.",
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
                child: Column(
                  children: [
                    SelectTextButton(
                      text: "더 올라가면 안될것 같아. 14층안으로 들어가자.",
                      onTap: () => navigatorOnPush(context, const Story210()),
                    ),
                    Gaps.v20,
                    SelectTextButton(
                      text: "무시하고 그냥 올라간다",
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
