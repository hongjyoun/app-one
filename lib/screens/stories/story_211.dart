import 'package:app_one/constants/gaps.dart';
import 'package:app_one/constants/sizes.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/screens/stories/story_212.dart';
import 'package:app_one/screens/widgets/alert_text.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story211 extends ConsumerWidget {
  const Story211({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                          "“좀비 첫 출몰지: 옥상으로 추정\n옥상 문을 절대 열지 말 것”\n누군가 경고를 남긴 것 같다",
                      color: Theme.of(context).primaryColor,
                    ),
                    Gaps.v20,
                    const AlertText(
                      text: "[ 목표가 갱신되었습니다 : 지하 주차장으로 이동 ]",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
                child: Column(
                  children: [
                    SelectTextButton(
                      text: "연구실에 있는 약품들을 둘러본다",
                      onTap: () => navigatorOnPush(context, const Story212()),
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
