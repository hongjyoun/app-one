import 'package:app_one/constants/sizes.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/screens/stories/story_701.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story902 extends StatelessWidget {
  const Story902({super.key});

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
                          "근데..어라, 사람인가?\n누군가가 고개를 떨군채\n14층 비상구 문앞 계단에\n걸터 앉아있다",
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
                      text: "저기요, 괜찮으세요?",
                      onTap: () => navigatorOnPush(context, const Story902()),
                    ),
                    SelectTextButton(
                      text: "무시하고 올라간다",
                      onTap: () => navigatorOnPush(context, const Story902()),
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
