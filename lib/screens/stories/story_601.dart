import 'package:app_one/constants/gaps.dart';
import 'package:app_one/constants/sizes.dart';
import 'package:app_one/enums/item.dart';
import 'package:app_one/functions/navigator_on_push.dart';
import 'package:app_one/models/hero_status.dart';
import 'package:app_one/providers/providers.dart';
import 'package:app_one/screens/stories/story_701.dart';
import 'package:app_one/screens/stories/story_702.dart';
import 'package:app_one/screens/stories/story_703.dart';
import 'package:app_one/screens/widgets/alert_text.dart';
import 'package:app_one/screens/widgets/content_text.dart';
import 'package:app_one/screens/widgets/round_icon_button.dart';
import 'package:app_one/screens/widgets/select_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story601 extends ConsumerWidget {
  const Story601({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HeroStatus hero = ref.watch(heroProvider);

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
                          text: "[아이템을 획득했습니다]",
                        ),
                        Gaps.v20,
                        ContentText(
                          text: "일단 옥상으로 가서\n헬기 구조를 기다리자",
                          color: Theme.of(context).primaryColor,
                        ),
                        Gaps.v20,
                        const AlertText(
                          text: "목표: 옥상이 있는 17층까지 이동",
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
                      text: "빠른 엘레베이터를 탄다",
                      onTap: () => navigatorOnPush(context, const Story701()),
                    ),
                    Gaps.v20,
                    SelectTextButton(
                      text: "비상 계단으로 이동한다",
                      onTap: hero.item == Item.lighter
                          ? () => navigatorOnPush(context, const Story702())
                          : () => navigatorOnPush(context, const Story703()),
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
