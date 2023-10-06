import 'package:app_one/constants/gaps.dart';
import 'package:app_one/constants/sizes.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/screens/stories/story_301.dart';
import 'package:app_one/screens/stories/story_303.dart';
import 'package:app_one/screens/widgets/alert_text.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story302 extends StatelessWidget {
  const Story302({super.key});

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
                        const AlertText(
                          text: "[좀비 출몰 뉴스를 확인했습니다]",
                        ),
                        Gaps.v20,
                        ContentText(
                          text: "응? 뉴스가 사실일까?",
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
                      text: "가짜뉴스인것같다. 그냥 엘레베이터에 타자",
                      onTap: () => navigatorOnPush(context, const Story303()),
                    ),
                    Gaps.v20,
                    SelectTextButton(
                      text: "진짜인것같은데? 믿어볼까? 엘레베이터를 타지 않는다",
                      onTap: () => navigatorOnPush(context, const Story301()),
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
